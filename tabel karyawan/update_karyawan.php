<?php 
$nik = $_REQUEST['nik'];
$nama= $_REQUEST['nama'];
$jabatan= $_REQUEST['jabatan'];
$divisi= $_REQUEST['divisi'];
$nomorhp= $_REQUEST['nomorhp'];
include "config/koneksi.php";
 $sql = "update karyawan set nik='".$nik."', nama='".$nama."', jabatan='".$jabatan."', divisi='".$divisi."', nomorhp='".$nomorhp."' where nik='".$nik."'
";
mysqli_query($koneksi,$sql);

?>
<script>
window.open('tampilkaryawan.php','_self');
</script>