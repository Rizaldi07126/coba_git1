<?php include "conn.php"?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Galeri Gambar</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/styleku.css">
	<script src="bootstrap4/jquery/3.3.1/jquery-3.3.1.js"></script>
	<script src="bootstrap4/js/bootstrap.js"></script>
	<style>
		.gallery {
			display: flex;
			flex-wrap: wrap;
			gap: 15px;
		}

		.gallery-item {
			border: 1px solid #CCC;
			padding: 10px;
			text-align: center;
			width: 220px;
		}

		img {
			width: 200px;
			height: auto;
		}
	</style>
</head>
<body>
	<br>
	<h2>Galeri Gambar</h2>
	<br>
	<div class="gallery">
		<?php
		$sql = "SELECT * FROM gambar ORDER BY uploaded_at DESC"
		?>
	</div>
</body>
</html>