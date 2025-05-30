<!DOCTYPE html>
<html>
<head>
	<title>Sistem Informasi Akademik::Edit Data Mahasiswa</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleku.css">
	<script src="bootstrap4/jquery/3.3.1/jquery-3.3.1.js"></script>
	<script src="bootstrap4/js/bootstrap.js"></script>
</head>
<body>
	<?php
	require "fungsi.php";
	require "head.html";
	$id=$_GET['kode'];
	$sql="select * from mhs where id='$id'";
	$qry=mysqli_query($koneksi,$sql);
	$row=mysqli_fetch_assoc($qry);
	?>
	<div class="utama">
		<h2 class="mb-3 text-center">EDIT DATA MAHASISWA</h2>	
		<div class="row">
		<div class="col-sm-3 text-center">
			<img class="rounded img-thumbnail" src="foto/mhs/<?php echo $row['foto']?>">
			<div>
				[ <a href="gantiFotoMhs.php?id=<?php echo $row['id']?>">Ganti Foto</a> ]
			</div>	
		</div>
		<div class="col-sm-9">
			<form enctype="multipart/form-data" method="post" action="sv_editMhs.php">
				<div class="form-group">
					<label for="nim">NIM:</label>
					<input class="form-control" type="text" name="nim" id="nim" value="<?php echo $row['nim']?>" readonly>
				</div>
				<div class="form-group">
					<label for="nama">Nama:</label>
					<input class="form-control" type="text" name="nama" id="nama" value="<?php echo $row['nama']?>">
				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<input class="form-control" type="email" name="email" id="email" value="<?php echo $row['email']?>">
				</div>				
				<div>		
					<button class="btn btn-primary" type="submit" id="submit">Simpan</button>
				</div>
				<input type="hidden" name="id" id="id" value="<?php echo $id?>">
			</form>
		</div>
		</div>
	</div>
	
</body>
</html>