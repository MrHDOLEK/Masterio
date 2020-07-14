<?php
/******************************************************
* c_baza.php
* konfiguracja połączenia z bazą danych
******************************************************/
$servername = "localhost";
$username = "phpmyadmin";
$password = "Kowalski16";
$dbname= "masterio";
$conn = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error)
{
    die("Błąd podczas laczenia z baza danych");
}
mysqli_close($connection);
session_start();
?> 