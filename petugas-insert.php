<?php
if(isset($_POST['save']))
{
  $id = $_POST['id_petugas'];
  $nama = $_POST['nama'];
  $jabatan = $_POST['jabatan'];
  $tlp = $_POST['nomor_telepon'];
  $alamat = $_POST['alamat'];
  //////////////////////////////////
   $options = [
     'cost'=> 12,
   ];
   $password_encrypt = password_hash($password,PASSWORD_BCRYPT,$options);
  /////////////////////////////////

    $query_insert = mysqli_query($koneksi,"INSERT INTO petugas VALUES('','$nama','$jabatan','$nomor_telepon','$alamat')");

//
if($query_insert) {
    ?>
        <div class="alert alert-success">
           Data Berhasil Disimpan !!!
        </div>
    <?php
    header('refresh:2; url=http://localhost/website2-main/petugas.php?page=petugas');
}else{
  ?>
    <div class="alert alert-damgerous">
           Data Gagal Disimpan !!!
        </div>
    <?php
  }   
}
?>