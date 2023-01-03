<?php 
include "config/koneksi.php";
$nik=$_REQUEST['nik'];
$sql ="DELETE FROM karyawan WHERE nik='$nik'";
mysqli_query($koneksi,$sql);
 ?>
 <script>
 	window.open('tampilkaryawan.php','_self');
 </script>