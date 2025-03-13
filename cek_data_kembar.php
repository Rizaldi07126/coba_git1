<?php

require "fungsi.php";

if(isset($_POST['nim'])) {
    $nim = $_POST['nim'];

    // Prepared statement untuk mencegah SQL ejection
    // Preapare = Siapkan pernyataan SQL untuk dieksekusi :
    $stmt = $koneksi->prepare("SELECT nim FROM mhs WHERE nim = ?");

    // bind_param() adalah fungsi bawaan PHP yang digunakan untuk mengikat
    // Parameter ke nama variabel yang ditentukan. fungsi ini mengikat variabel, meneruskan nilainya
    // Sebagai input, dan menerima nilai output, jika ada, dari penanada parameter terikat
    $stmt->bind_param("s",$nim);
    $stmt->execute();
    $result = $stmt->get_result();

        if($result->num_rows>0){
            echo "exists";
        }
        else{
            echo "not_exist";
        }
    $stmt->close();
    }
?>