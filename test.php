<div class="form-group mt-2">
                <label for="">Kelas</label>
                <select class="form-control" name="id_kelas" required>
                    <option value="<?php echo $row['id_kelas'] ?>"><?php echo $row['id_kelas'] ?></option>
                    <?php
                    $query = mysqli_query($konek,"SELECT * FROM kelas");
                    foreach ($query as $kelas) {
                        ?>
                        <option value="<?php echo $row["id_kelas"]?>">
                            <?php echo $kelas["nama_kelas"]?>
                        </option>
                        <?php
                    }
                    ?>
                </select>
            </div>
            <div class="form-group mt-2">
                <label for="">Jurusan</label>
                <select class="form-control" name="id_jurusan" required>
                    <option value="<?php echo $row['id_jurusan'] ?>"><?php echo $row['id_jurusan'] ?></option>
                    <?php
                    $query = mysqli_query($konek,"SELECT * FROM jurusan");
                    foreach ($query as $kelas) {
                        ?>
                        <option value="<?php echo $row["id_jurusan"]?>">
                            <?php echo $kelas["nama_jurusan"]?>
                        </option>
                        <?php
                    }
                    ?>
                </select>
            </div>