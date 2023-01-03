<div id="tampilan">
<header>
    <h1 align=center style="color:#100F0F; font-family:courier; background-color:white";>FORM KARYAWAN</h1>
</script>
<!DOCTYPE html>
<html>
    <style type="text/css">
        table {
            font-family:courier;
            background-color:#FFEA11;
            font-size:20px;
            color:#100F0F;
            border-width:1px;
            border-style:solid;
            border-color:#100720;
        }
    </style>
    <body style="background-color:#E2DCC8"></body>
</html>
<?php 	
include "config/koneksi.php";
if (isset($_REQUEST['nik'])){
		$sql = "select * from karyawan where nik='".$_REQUEST['nik']."'";
		$hasil=mysqli_query($koneksi,$sql);
		$row=mysqli_fetch_array($hasil);
}else{
		$row="";
}
?>
 <html>
	<title>Form Karyawan</title>
		<body>
			<form method="post" action="<?php echo $row==""?"save_karyawan.php":"update_karyawan.php";?>">
				<table>
					<tr>
						<td><b>NIK</td>
						<td>
							<input type="text" name="nik" value="<?php echo $row==""?"":$row['nik'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td><b>Nama</td>
						<td>
							<input type="text" name="nama" value="<?php echo $row==""?"":$row['nama'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td><b>Jabatan</td>
						<td>
							<input type="text" name="jabatan" value="<?php echo $row==""?"":$row['jabatan'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td><b>Divisi</td>
						<td>
							<input type="text" name="divisi" value="<?php echo $row==""?"":$row['divisi'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td><b>Nomor Hp</td>
						<td>
							<input type="text" name="nomorhp" value="<?php echo $row==""?"":$row['nomorhp'];?> " size="30">
						</td>
					</tr>
					<tr>
					    <td></td>
						<td>
							<input type="submit" name="submit" button style='background-color:#f6fb73; border-color:#276b6c; color:black; font-size:16px; font-family:courier; border-width:2px' value="Save">
						</td>
					</tr>

				</table>
			</form>
		</body>
</html>