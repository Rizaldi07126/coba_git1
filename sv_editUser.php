<?php
//memanggil file pustaka fungsi
require "fungsi.php";

//memindahkan data kiriman dari form ke var biasa
$iduser=$_POST["iduser"];
$username=$_POST["username"];
$password=md5($_POST["password"]);
$status=$_POST['status']
$uploadOk=1;

//membuat query
$sql="update user set username='$username',
					 password='$password',
					 status='$status'
					 where id='$id'";
mysqli_query($koneksi,$sql) or die(mysqli_error($koneksi));
header("location:ajaxUpdateUser.php");
?>