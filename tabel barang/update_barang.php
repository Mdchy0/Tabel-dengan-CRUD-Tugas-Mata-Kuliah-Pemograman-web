<?php 
$kodebarang = $_REQUEST['kodebarang'];
$namabarang = $_REQUEST['namabarang'];
$satuanterbesar = $_REQUEST['satuanterbesar'];
$satuanterkecil = $_REQUEST['satuanterkecil'];
$konversi = $_REQUEST['konversi'];

include "config/koneksi.php";
$sql = "update barang set kodebarang='".$kodebarang."', namabarang='".$namabarang."', satuanterbesar='".$satuanterbesar."', satuanterkecil='".$satuanterkecil."', konversi='".$konversi."' where kodebarang='".$kodebarang."'
";
mysqli_query($koneksi,$sql);

header("location:tampilbarang.php");
 ?>
