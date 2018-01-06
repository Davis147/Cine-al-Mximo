<?php
include 'conexion.php';
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$edad=$_POST["edad"];
$telefono=$_POST["telefono"];
$nick=$_POST["nick"];
$contrasena=$_POST["contrasena"];

$insertar = "INSERT INTO Usuario (nombre, apellido, edad, telefono, nick, contrasena) VALUES ('$nombre', '$apellido', '$edad', '$telefono', '$nick', '$contrasena')";

$resultado = mysqli_query($conexion, $insertar);

if (!$resultado) {
    echo 'Error al registrarse';
} else {
    echo 'Usuario registrado exitosamente';
}

mysqli_close($conexion);

