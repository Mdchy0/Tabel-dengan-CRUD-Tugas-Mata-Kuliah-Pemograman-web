<?php
include "config/koneksi.php";
$sql = "select * from barang";
$hasil = mysqli_query($koneksi,$sql);

echo "
<input type='button' value='tambah data' onClick=\"jstambah();\">
<table border=1 cellspacing=5 cellpading=10>
			<tr>
				<td>NO</td>
				<td>Kode Barang</td>
				<td>Nama Barang</td>
				<td>Satuan Terbesar</td>
				<td>Satuan Terkecil</td>
				<td>Konversi</td>
				<td>Action</td>
			</tr>
			";
			$nomor = 1;
foreach($hasil as $row){
		echo "<tr>
				<td>".$nomor."</td>
				<td>".$row['kodebarang']."</td>
				<td>".$row['namabarang']."</td>
				<td>".$row['satuanterbesar']."</td>
				<td>".$row['satuanterkecil']."</td>
				<td>".$row['konversi']."</td>
				<td><a href='#' onClick=\"jsedit('".$row['kodebarang']."');\">edit<a/>
					| <a href='#' onClick=\"jsdelete('".$row['kodebarang']."');\">delete<a/>
				</td>
			</tr>
				
			";
			$nomor++;
}
echo "</table>"
?>
<script>
	function jstambah(){

		window.open('form_barang.php','_self');
	}
	function jsdelete(kode){
		if(confirm('yakin delete?')==false){
			return false;
		}
		window.open('deletebarang.php?kodebarang='+kode,'_self');
	}
	function jsedit(kode){
		window.open('form_barang.php?kodebarang='+kode,'_self');
	}
</script>