<?php
include 'koneksi.php';
$id = $_POST['id'];
$query1 = mysqli_query($koneksi, "SELECT * FROM ukt WHERE id = '$id'")->fetch_row();
// set biaya dari db ukt
$biaya = $query1[2];
// update biaya di db riwayat
$query2 = mysqli_query($koneksi, "UPDATE riwayat SET biaya = '$biaya' WHERE id_ukt = '$id'");
if ($query2) {
    header('location:detail.php?id=' . $id);
} else {
    echo "gagal";
}
