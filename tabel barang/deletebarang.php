 <?php 
include "config/koneksi.php";
$kodebarang=$_REQUEST['kodebarang'];
$sql ="DELETE FROM barang WHERE kodebarang='$kodebarang'";
mysqli_query($koneksi,$sql);
 ?>
 <script>
 	window.open('tampilbarang.php','_self');
 </script>