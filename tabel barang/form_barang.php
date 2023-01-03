<?php 	
include "config/koneksi.php";
if (isset($_REQUEST['kodebarang'])){
		$sql = "select * from barang where kodebarang='".$_REQUEST['kodebarang']."'";
		$hasil=mysqli_query($koneksi,$sql);
		$row=mysqli_fetch_array($hasil);
}else{
		$row="";
}
 ?>

<html>
	<title>Form Barang</title>
		<body>
			<form method="post" action="<?php echo $row==""?"save_barang.php":"update_barang.php";?>">
				<table>
					<tr>
						<td>Kode Barang</td>
						<td>
							<input type="text" name="kodebarang" value="<?php echo $row==""?"":$row['kodebarang'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td>Nama Barang</td>
						<td>
							<input type="text" name="namabarang" value="<?php echo $row==""?"":$row['namabarang'];?> "  size="30">
						</td>
					</tr>
					<tr>
						<td>Satuan Terbesar</td>
						<td>
							<input type="text" name="satuanterbesar" value="<?php echo $row==""?"":$row['satuanterbesar'];?> "  size="30">
						</td>
					</tr>
					<tr>
						<td>Satuan Terkecil</td>
						<td>
							<input type="text" name="satuanterkecil" value="<?php echo $row==""?"":$row['satuanterkecil'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td>Konversi</td>
						<td>
							<input type="text" name="konversi" value="<?php echo $row==""?"":$row['konversi'];?> " size="30">
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" name="submit" value="save">
						</td>
					</tr>

				</table>
			</form>
		</body>
</html>