<?php 
$kodebarang = $_REQUEST['kodebarang'];
$namabarang = $_REQUEST['namabarang'];
$satuanterbesar = $_REQUEST['satuanterbesar'];
$satuanterkecil = $_REQUEST['satuanterkecil'];
$konversi = $_REQUEST['konversi'];

include "config/koneksi.php";
$sql = "insert into barang 
(kodebarang,namabarang,satuanterbesar,satuanterkecil,konversi) 
values
(
'".$kodebarang."',
'".$namabarang."',
'".$satuanterbesar."',
'".$satuanterkecil."',
'".$konversi."'
)
";
mysqli_query($koneksi,$sql);

header("location:tampilbarang.php");
 ?>
