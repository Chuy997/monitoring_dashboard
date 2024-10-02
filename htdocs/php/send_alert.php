<?php
require_once 'C:/xampp/htdocs/MonitoringDashboard/config/config.php';
require_once 'C:/xampp/htdocs/MonitoringDashboard/phpmailer/src/PHPMailer.php';
require_once 'C:/xampp/htdocs/MonitoringDashboard/phpmailer/src/SMTP.php';
require_once 'C:/xampp/htdocs/MonitoringDashboard/phpmailer/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$sql = "SELECT * FROM measurements WHERE timestamp >= NOW() - INTERVAL 6 MINUTE ORDER BY timestamp ASC";
$result = $conn->query($sql);

if ($result === false) {
    die("Error en la consulta: " . $conn->error);
}

if ($result->num_rows > 0) {
    $outOfRange = false;
    $message = 'Se detectaron los siguientes valores fuera de rango:<br><br>';
    $messageText = 'Se detectaron los siguientes valores fuera de rango:\n\n';

    while ($row = $result->fetch_assoc()) {
        $timestamp = $row['timestamp'];
        $humidity = $row['humidity'];
        $temperature = $row['temperature'];

        // Validar humedad fuera de rango
        if ($humidity < 30 || $humidity > 75) {
           
            $message .= "Humedad fuera de rango: " . $humidity . "% a las " . $timestamp . "<br>";
            $messageText .= "Humedad fuera de rango: " . $humidity . "% a las " . $timestamp . "\n";
            $outOfRange = true;
        }

        // Validar temperatura fuera de rango
        if ($temperature < 10 || $temperature > 30) {
            $message .= "Temperatura fuera de rango: " . $temperature . "°C a las " . $timestamp . "<br>";
            $messageText .= "Temperatura fuera de rango: " . $temperature . "°C a las " . $timestamp . "\n";
            $outOfRange = true;
        }
    }

    if ($outOfRange) {
        try {
            // Crear instancia de PHPMailer
            $mail = new PHPMailer(true);
            // Configuración del servidor
            $mail->isSMTP();
            $mail->Host = 'smtp.exmail.qq.com'; // Cargar desde variable de entorno
            $mail->SMTPAuth = true;
            $mail->Username = 'jesus.muro@zhongli-la.com'; // Cargar desde variable de entorno
            $mail->Password = 'Chuy.12#$'; // Cargar desde variable de entorno
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            $mail->Port = 465;

            $mail->CharSet = 'UTF-8';
            // Remitente y destinatarios
            $mail->setFrom('jesus.muro@zhongli-la.com', 'Monitoring Dashboard');
            $mail->addAddress('liuwenbo10@huawei.com');
            $mail->addAddress('omar.esquivel@huawei.com');
            $mail->addAddress('ingenieria@zhongli-la.com');
            $mail->addAddress('cristo.mendoza@huawei.com');
            $mail->addAddress('sara.margarita.constantino@huawei.com');
            $mail->addAddress('calidad@zhongli-la.com');

            // Contenido del correo
            $mail->isHTML(true);
            $mail->Subject = 'Alerta de Sensor';
            $mail->Body = $message . "<br>Por favor, tome medidas para corregir el problema.";
            $mail->AltBody = $messageText . "\nPor favor, tome medidas para corregir el problema.";

            // Enviar correo y registrar en log
            if ($mail->send()) {
                file_put_contents('email_log.txt', "Correo enviado exitosamente a " . date('Y-m-d H:i:s') . "\n", FILE_APPEND);
                echo 'Correo enviado exitosamente.';
            } else {
                file_put_contents('email_log.txt', "Error al enviar el correo a " . date('Y-m-d H:i:s') . " - Error: " . $mail->ErrorInfo . "\n", FILE_APPEND);
                echo "Error al enviar el correo. Por favor, contacte al administrador.";
            }
        } catch (Exception $e) {
            // Loguear errores de PHPMailer
            file_put_contents('email_log.txt', "Excepción al intentar enviar el correo a " . date('Y-m-d H:i:s') . " - Error: " . $mail->ErrorInfo . "\n", FILE_APPEND);
            echo "Error al enviar el correo. Por favor, contacte al administrador.";
        }
    } else {
        echo "No se encontraron valores fuera de rango.";
    }
} else {
    echo "No se encontraron datos en las últimas 2 horas.";
}

// Cerrar la conexión
$conn->close();
