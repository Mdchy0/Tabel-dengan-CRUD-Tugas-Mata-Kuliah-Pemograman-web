<?php 
$kodetipe = $_REQUEST['kodetipe'];
$namatipe = $_REQUEST['namatipe'];

include "config/koneksi.php";
$sql = "insert into tipe_dokumen 
(kodetipe,namatipe) 
values
(
'".$kodetipe."',
'".$namatipe."')
";
mysqli_query($koneksi,$sql);

$sql = "select * from karyawan where jabatan = 'Manager' order by nik asc";
$hasil = mysqli_query($koneksi,$sql);
while ($row=mysqli_fetch_array($hasil)){
    $pesan = "";
    $pesan .="*Dear ".$row['nama']."*\n\n";
    $pesan .="Telah dilakukan penambahan tipe dokumen: ".$namatipe."".$kodetipe."\n";
    $pesan .="Demikian info dari kami, terima kasih\n\n";
    $pesan .="*muchtardwicahyo.myprojectbanisaleh.com*\n\n";
    
    
    $curl = curl_init();
    
    curl_setopt_array($curl, array(
      CURLOPT_URL => "https://md.fonnte.com/api/send_message.php",
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => array(
        'phone' => $row['nomorhp'],
        'type' => 'text',
        'text' => $pesan,
        'delay' => '1',
        'schedule' => '0'),
      CURLOPT_HTTPHEADER => array(
        "Authorization: 2w4EGAphnB1PR39H5B22"
      ),
    ));
    
    $response = curl_exec($curl);
    
    
    curl_close($curl);
    echo $response;
    sleep(1); #do not delete!
}
echo "<script>window.open('tampiltipedokumen.php','_self');</script>";
 ?>

