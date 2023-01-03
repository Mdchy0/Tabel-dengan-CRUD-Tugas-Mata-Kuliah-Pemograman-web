<div id="tampilan">
<header>
    <h1 align=center style="color:#100F0F; font-family:courier; background-color:white";>DATA TIPE DOKUMEN</h1>
</header>
<!DOCTYPE html>
<html>
    <style type="text/css">
        table {
            font-family:verdana;
            background-color:#FEFBF6;
            text-align:left;
            font-size:16px;
            color:#7d4a5d;
            border-collapse:collapse;
        }
        table tr:first-child td{
            background-color:#FFEA11;
            text-align:center;
        }
        table td{
            border-width:2px;
            padding:15px 36px;
            border-style:solid;
            border-color:#100F0F;
        }
    </style>
    <body style="background-color:#E2DCC8"></body>
</html>
<?php
include "config/koneksi.php";
$sql = "select * from tipe_dokumen order by kodetipe asc";
$hasil = mysqli_query($koneksi,$sql);

echo "
<input type='button' button style='background-color:#f6fb73; border-color:#60424e; color:black; font-size:16px; font-family:courier; border-width:2px' value='Tambah data' onClick=\"jstambah();\"><br><br/>
<table border=1 cellspacing=5 cellpading=10>
			<tr>
				<td><b>No</td>
				<td><b>Kode Tipe</td>
				<td><b>Nama Tipe</td>
				<td><b>Action</td>
			";
			$nomor = 1;
foreach($hasil as $row){
		echo "<tr>
				<td><center>".$nomor."</td>
				<td>".$row['kodetipe']."</td>
				<td>".$row['namatipe']."</td>
				<td><a href='#' onClick=\"jsedit('".$row['kodetipe']."');\">Edit<a/>
					| <a href='#' onClick=\"jsdelete('".$row['kodetipe']."');\">Delete<a/></td>
			";
			$nomor++;
}
echo "</table>"
?>
<script>
	function jstambah(){

		window.open('form_tipedokumen.php','_self');
	}
	function jsdelete(kode){
		if(confirm('Are you sure want to delete?')==false){
			return false;
		}
		window.open('deletetipedokumen.php?kodetipe='+kode,'_self');
	}
	function jsedit(kode){
		window.open('form_tipedokumen.php?kodetipe='+kode,'_self');
	}
</script>