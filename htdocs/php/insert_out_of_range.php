<?php
require_once 'C:/xampp/htdocs/MonitoringDashboard/config/config.php';

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Insertar un valor fuera de rango
$humidity = 80; // Humedad fuera de rango (> 75)
$temperature = 35; // Temperatura fuera de rango (> 30)
$timestamp = date('Y-m-d H:i:s');

$sql = "INSERT INTO measurements (timestamp, humidity, temperature) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sdd", $timestamp, $humidity, $temperature);

if ($stmt->execute()) {
    echo "Valor fuera de rango insertado correctamente.";
} else {
    echo "Error al insertar el valor fuera de rango: " . $stmt->error;
}

$stmt->close();
$conn->close();
