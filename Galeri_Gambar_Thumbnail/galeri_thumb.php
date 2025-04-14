<?php include "koneksi.php"; 

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$target_dir = "uploads/";
	$thumb_dir = "thumbs/";
	$file_name = basename($_FILES['gambar']['name']);
	$target_file = $target_dir . $file_name;
	$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

	// Validasi gambar
	$check = getimagesize($_FILES['gambar']['tmp_name']);
	if ($check === false) {
		die("File bukan gambar.");
	}


	// Validasi ekstensi
	$allowed = ['jpg', 'jpeg', 'png', 'gif'];
	if (!in_array($imageFileType, $allowed)) {
		die("Hanya file JPG, JPEG, PNG, dan GIF yang diperbolehkan!");
	}


	// Validasi ukuran
	if ($_FILES['gambar']['size'] > 2 * 1024 * 1024) {
		die("Ukuran file terlalu besar (MAKS 2MB)!");
	}


	// Validasi MIME
	$finfo = finfo_open(FILEINFO_MIME_TYPE);
	$mime = finfo_file($finfo, $_FILES['gambar']['tmp_name']);
	if (!in_array($mime, ['image/jpeg', 'image/png', 'image/gif'])) {
		die("Tipe MIME tidak sesuai!");
	}


	// Upload gambar asli
	if (!move_uploaded_file($_FILES['gambar']['tmp_name'], $target_file)) {
		die("Gagal mengunggah file :(");
	}


	// Buat Thumbnail
	list($width, $height) = getimagesize($target_file);
	$new_width = 200;
	$new_height = floor($height * ($new_width / $width));
	$thumbpath = $thumb_dir . "thumb_" . $file_name;

	switch ($imageFileType) {
		case 'jpg':
		case 'jpeg':
			$src = imagecreatefromjpeg($target_file);
			break;
		case 'png':
			$src = imagecreatefrompng($target_file);
			break;
		case 'gif':
			$src = imagecreatefromgif($target_file);
			break;
	}

	$thumb = imagecreatetruecolor($new_width, $new_height);
	imagecopyresampled($thumb, $src, 0, 0, 0, 0, $new_width, $new_height, $width, $height);

	switch ($imageFileType) {
		case 'jpg':
		case 'jpeg':
			imagejpeg($thumb, $thumbpath, 80);
			break;
		case 'png':
			imagepng($thumb, $thumbpath);
			break;
		case 'gif':
			imagegif($thumb, $thumbpath);
			break;
	}

	imagedestroy($src);
	imagedestroy($thumb);


	// Simpan ke DATABASE
	$stmt = $koneksi->prepare("INSERT INTO gambar_thumbnail (file_name, filepath, thumbpath, width, height) VALUES (?, ?, ?, ?, ?)");
	$stmt->bind_param("sssii", $file_name, $target_file, $thumbpath, $width, $height);
	$stmt->execute();

	echo "Gambar berhasil diunggah dan thumbnail dibuat :)<br><br>";
	$stmt->close();

}
?>



<!-- HTML FORM -->
<!DOCTYPE html>
<html>
<head>
	<title>Latihan Unggah Gambar</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleku.css">
	<script src="bootstrap4/jquery/3.3.1/jquery-3.3.1.js"></script>
	<script src="bootstrap4/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<br>
		<h2>Upload Gambar + Thumbnail</h2>
		<form action="" method="POST" enctype="multipart/form-data">
		<div>
			<h4>Pilih Gambar yang akan Anda Unggah:</h4>
		</div>
		<div class="col-sm-5">
			<label for="gambar">Gambar</label>
			<input class="form-control" type="file" name="gambar" required>
		</div>
		<br>
		<div class="col-12">
			<button class="btn btn-primary" type="submit">Upload</button>
		</div>
		</form>
	</div>

	<!-- Tampilkan Gambar -->
	<div class="container">
		<br><br>
		<div class="head">
			<h4>Galeri Thumbnail</h4>
		</div>
		<div class="row">
			<?php
			$result = $koneksi->query("SELECT * FROM gambar_thumbnail ORDER BY id_thumbnail DESC");?>
			<div>
				<div class="card">
					<?php ?>
					<div class="card-body">
					<?php while ($row = $result->fetch_assoc()) {
					echo "<img src='" . $row['thumbpath'] . "' class='img-thumbnail' width='150' style='margin-top: 10px'><br>";
					} ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>