
<center><h1 class="mt-4 mb-3">Data petugas</h1></center>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
Tambah Data
</button>
<!-- --------------------------------------------------------------------------------------------------- -->
<table class="table table-striped table-hover">
    <tr class="text-center">
        <th>No</th>
        <th>nama</th>
        <th>jabatan</th>
        <th>nomor_telepon</th>
        <th>alamat</th>
        <th>--action--</th>
    </tr>
    <?php
        $query = mysqli_query($koneksi,"SELECT * FROM petugas");
        $no = 1;
        foreach ($query as $row) {
    ?>
    <tr>
        <td align="center" valign="middle"><?php echo $no; ?></td>
        <td valign="middle"><?php echo $row['nama']; ?></td>
        <td valign="middle"><?php echo $row['jabatan']; ?></td>
        <td valign="middle"><?php echo $row['nomor_telepon']; ?></td>
        <td align="center" valign="middle"><?php echo $row['alamat']; ?></td>
        <td valign="middle">
        <a href="?page=petugas-delete&delete&id=<?php echo $row['id_petugas'];?>">
            <button class="btn btn-danger"><i class="fas fa-trash-alt">Hapus</i></button>
        </a>
        <a href="?page=petugas-edit&edit&id=<?php echo $row['id_petugas'];?>">
            <button class="btn btn-warning"><i class="fas fa-edit">Update</i></button>
        </a>
        </td>
    </tr>
    <?php
    $no++;
    }
    ?>
</table>
<!-- ------------------------------------------------------------- -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ISI DATA DI SINI !!</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
    <!-------------------------------------------->
      <!--------form aggota----------------------->
      <form action="?page=petugas-insert"method="post">
            <div class="form-group mt-2">
              <input class="form-control" type="text" name="nama" placeholder="Nama petugas" require>
            </div>
            
            <div class="form-group mt-2">
              <input class="form-control" type="text" name="jabatan" placeholder="jabatan" require>
            </div>


            <div class="form-group mt-2">
              <input class="form-control" type="text" name="nomor_telepon" placeholder=" No Telepon" require>
            </div>

            <div class="form-group mt-2">
              <textarea class="form-control" name="alamat" placeholder=" Alamat"></textarea>
            </div>
           
        <!-----------------------------------------------------------------------------------------------------------------  -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button class="btn btn-success mt-2" type="submit" name="save">Simpan</button>
      </form>
      </div>
    </div>
  </div>
</div>