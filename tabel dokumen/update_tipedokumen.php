<?php 
$kodetipe = $_REQUEST['kodetipe'];
$namatipe= $_REQUEST['namatipe'];
include "config/koneksi.php";
 $sql = "update tipe_dokumen set kodetipe='".$kodetipe."', namatipe='".$namatipe."' where kodetipe='".$kodetipe."'
";
mysqli_query($koneksi,$sql);

?>
<script>
window.open('tampiltipedokumen.php','_self');
</script>