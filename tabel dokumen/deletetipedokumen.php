<?php 
include "config/koneksi.php";
$kodetipe=$_REQUEST['kodetipe'];
$sql ="DELETE FROM tipe_dokumen WHERE kodetipe='$kodetipe'";
mysqli_query($koneksi,$sql);
 ?>
 <script>
 	window.open('tampiltipedokumen.php','_self');
 </script>