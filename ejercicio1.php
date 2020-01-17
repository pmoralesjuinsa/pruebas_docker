<?php
$usuario = "root";
$contrasena = "123456";
$servidor = "elalias";
$basededatos = "pruebas";

$conexion = mysqli_connect( $servidor, $usuario, $contrasena ) or die ("No se ha podido conectar al servidor de Base de datos");

$db = mysqli_select_db( $conexion, $basededatos ) or die ( "Upps! Pues va a ser que no se ha podido conectar a la base de datos" );

$consulta = "SELECT * FROM alumnos";

$resultado = mysqli_query( $conexion, $consulta ) or die ( "Algo ha ido mal en la consulta a la base de datos");

echo "<ul>";

while ($columna = mysqli_fetch_array( $resultado ))
{
    echo "<li>" . $columna['nombre'] . " - " . $columna['edad'] . " años</li>";
}

echo "</ul>";
