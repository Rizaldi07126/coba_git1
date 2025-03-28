<?php

$servername = "localhost";
$username = "root";
$password = "Sha252001.,";
$database = "akademik07126";

// Create connection
 
$koneksi = mysqli_connect($servername, $username, $password, $database);
 
// Check connection
 
if (!$koneksi) {
 
    die("Connection failed: " . mysqli_connect_error());
 
}
//echo "Connected successfully";
//mysqli_close($conn);
?>
