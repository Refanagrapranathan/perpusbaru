<!-- Proses Update -->
<?php
    $id = $_POST['id_petugas'];
    $nama = $_POST['nama'];
    $jabatan = $_POST['jabatan'];
    $tlp = $_POST['nomor_telepon'];
    $alamat = $_POST['alamat'];

    $query_update = mysqli_query($koneksi,"UPDATE petugas SET  nama = '$nama',
                                                            jabatan = '$jabatan', 
                                                            nomor_telepon = '$tlp', 
                                                            alamat = '$alamat'
                                                            WHERE id_petugas = '$id'");

if($query_update)
    {
        ?>
            <div class="alert alert-success">
                Data Berhasil Diupdate !!!
            </div>
        <?php
        header('refresh:2; URL=http://localhost/website2-main/petugas.php?page=petugas');
    }
    else
    {
        ?>
            <div class="alert alert-danger">
                Data GAGAL Diupdate !!!!!!!!!
            </div>
        <?php
    }

////End of proses delete data/////////////////////////////////////////////////////////////////////////

?>