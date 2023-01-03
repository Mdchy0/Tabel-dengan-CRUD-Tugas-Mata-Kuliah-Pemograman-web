<div id="tampilan">
<header>
    <h1 align=center style="color:#100F0F; font-family:courier; background-color:white";>FORM TIPE DOKUMEN</h1>
</script>
<!DOCTYPE html>
<html>
    <style type="text/css">
        table {
            font-family:courier;
            background-color:#FFEA11;
            font-size:20px;
            color:#7d4a5d;
            border-width:1px;
            border-style:solid;
            border-color:#100F0F;
        }
    </style>
    <body style="background-color:#E2DCC8"></body>
</html>
<?php 	
include "config/koneksi.php";
if (isset($_REQUEST['kodetipe'])){
		$sql = "select * from tipe_dokumen where kodetipe='".$_REQUEST['kodetipe']."'";
		$hasil=mysqli_query($koneksi,$sql);
		$row=mysqli_fetch_array($hasil);
}else{
		$row="";
}
?>
 <html>
	<title>Form Tipe Dokumen</title>
		<body>
			<form method="post" action="<?php echo $row==""?"save_tipedokumen.php":"update_tipedokumen.php";?>">
				<table>
					<tr>
						<td><b>Kode Tipe</td>
						<td>
							<input type="text" name="kodetipe" value="<?php echo $row==""?"":$row['kodetipe'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td><b>Nama Tipe</td>
						<td>
							<input type="text" name="namatipe" value="<?php echo $row==""?"":$row['namatipe'];?> " size="30">
						</td>
					</tr>
					<tr>
					    <td></td>
						<td>
							<input type="submit" name="submit" button style='background-color:#f6fb73; border-color:#60424e; color:black; font-size:16px; font-family:courier; border-width:2px' value="Save">
						</td>
					</tr>

				</table>
			</form>
		</body>
</html>