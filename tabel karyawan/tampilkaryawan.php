<div id="tampilan">
<header>
    <h1 align=center style="color:#100F0F; font-family:courier; background-color:white";>DATA KARYAWAN</h1>
</header>
<!DOCTYPE html>
<html>
    <style type="text/css">
        table {
            font-family:verdana;
            background-color:#e0fee6;
            text-align:left;
            font-size:16px;
            color:#4e6162;
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
    <body style="background-color:#edf4f2"></body>
</html>
<?php
include "config/koneksi.php";
$sql = "select * from karyawan order by nik asc";
$hasil = mysqli_query($koneksi,$sql);

echo "
<input type='button' button style='background-color:#f6fb73; border-color:#276b6c; color:black; font-size:16px; font-family:courier; border-width:2px' value='Tambah data' onClick=\"jstambah();\"><br><br/>
<table border=1 cellspacing=5 cellpading=10>
			<tr>
				<td><b>No</td>
				<td><b>NIK</td>
				<td><b>Nama</td>
				<td><b>Jabatan</td>
				<td><b>Divisi</td>
				<td><b>Nomor Hp</td>
				<td><b>Action</td>
			";
			$nomor = 1;
foreach($hasil as $row){
		echo "<tr>
				<td><center>".$nomor."</td>
				<td>".$row['nik']."</td>
				<td>".$row['nama']."</td>
				<td><center>".$row['jabatan']."</td>
				<td><center>".$row['divisi']."</td>
				<td>".$row['nomorhp']."</td>
				<td><a href='#' onClick=\"jsedit('".$row['nik']."');\">Edit<a/>
					| <a href='#' onClick=\"jsdelete('".$row['nik']."');\">Delete<a/></td>
			";
			$nomor++;
}
echo "</table>"
?>
<script>
	function jstambah(){

		window.open('form_karyawan.php','_self');
	}
	function jsdelete(kode){
		if(confirm('Are you sure want to delete?')==false){
			return false;
		}
		window.open('deletekaryawan.php?nik='+kode,'_self');
	}
	function jsedit(kode){
		window.open('form_karyawan.php?nik='+kode,'_self');
	}
</script>