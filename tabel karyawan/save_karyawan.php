<?php 
$nik = $_REQUEST['nik'];
$nama = $_REQUEST['nama'];
$jabatan = $_REQUEST['jabatan'];
$divisi = $_REQUEST['divisi'];
$nomorhp = $_REQUEST['nomorhp'];

include "config/koneksi.php";
$sql = "insert into karyawan
(nik,nama,jabatan,divisi,nomorhp) 
values
(
'".$nik."',
'".$nama."',
'".$jabatan."',
'".$divisi."',
'".$nomorhp."')
";
mysqli_query($koneksi,$sql);
echo "<script>window.open('tampilkaryawan.php','_self');</script>";
?>
