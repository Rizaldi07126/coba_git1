<!DOCTYPE html>
<html>

<head>
	<title>SELAMAT DATANG</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap lokal -->
	<link rel="stylesheet" href="bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleku.css">
	<script src="bootstrap-5.3.3-dist/jquery/jquery-3.7.1.min.js"></script>
	<script src="bootstrap-5.3.3-dist/js/bootstrap.js"></script>

	<!-- Tambahkan program validasi dan simpan data dengan ajax disini -->
	<style>
		.error {
		color: red;
		font-size: 0.9em;
		display: none;
		}
		#ajaxResponse {
		margin-top: 15px;
		}
	</style>
	<script>
		$(document).ready(function() {
		// membuat fungsi untuk mengecek NIM pada tabel mhs di database akademik12345
			function checkUnameExists(nim) {
			$.ajax({
		// memanggil file cek_data_kembar.php
			url: 'CekDataKembarUser.php',
			type: 'POST',
			data: {
			username: username
			},
			success: function(response) {
			if (response === 'exists') {
				showError("* Data sudah ada, silahkan isikan yang lain");$("#username").val("").focus();
				return false;
			} 
			else {
				hideError();
				$("#username").focus();
			}
		}
		});
	}
	function validateUsername() {
	var username = $("#username").val();
	var errorMsg = "";
		// Cek apakah username kosong
		if (username.trim() === "") {
		errorMsg = "* Username tidak boleh kosong!";
		showError(errorMsg);
		return false;
		}
		return true;
		}
		function showError(message) {
		$("#usernameError").text(message).show();
		}
		function hideError() {
		$("#usernameError").hide();
		}
		
		// Event listeners
		$("#username").on("blur", function() {
		if (validateUsername()) {
		checkUnameExists($(this).val());
		}
		}).on("keypress", function(event) {
		if (event.which === 13) {
		event.preventDefault();
		if (validateUsername()) {
		checkUnameExists($(this).val());
		}
		}
		}).on("input", function() {
		formatNIM(this);
		hideError();
		});
		// Form submission with AJAX
		$("#UserForm").on("submit", function(event) {
		//Menghentikan perilaku submit form standar
		//Memungkinkan proses submit data melalui JavaScript
		event.preventDefault();
		//Memastikan NIM valid sebelum mengirim data ke server
		if (!validateUsername()) {
		return false;
		}
		//Membuat objek FormData untuk menangkap semua data form
		var formData = new FormData(this);
		$.ajax({
		// memanggil file sv_addMhs.php
		url: 'sv_addUser.php',
		type: 'POST',
		data: formData,
		//untuk mendukung upload file
		processData: false,
		contentType: false,
		success: function(response) {
		$("#ajaxResponse").html(response);
		},
		error: function() {
		$("#ajaxResponse").html("Terjadi kesalahan saat mengirim data.");
		}
		});
		});
		});

		function notifsaved() {
		alert("Data berhasil disimpan");
		window.location.reload();
		}
		</script>
	
</head>

<body>
<?php require "head.html"; ?>
	<div class="utama">
		<br><br><br>
		<h3>TAMBAH DATA USER</h3>
		<form id="UserForm" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="username">Username:</label>
				<input class="form-control" type="username" name="username" id="username" required>
			</div> 
			<div class="form-group">
				<label for="password">Password:</label>
				<input class="form-control" type="password" name="password" id="password" required>
			</div>
			<div class="form-group">
				<label for="status">Status:</label>
				<select class="form-select" id="status" name="status">
					<option selected>Pilih Status</option>
					<option value="admin">Admin</option>
					<option value="dosen">Dosen</option>
					<option value="mhs">Mahasiswa</option>
				</select>
			</div>
			<div class="form-group">
				<label for="foto">Foto</label>
				<input class="form-control" type="file" name="foto" id="fotoUser">
			</div>
			<br>
			<div>
				<button type="submit" class="btn btn-primary">Simpan</button>
			</div>
		</form>
		<div id="ajaxResponse"></div>
	</div>
</body>

</html>