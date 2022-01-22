<?php
    session_start();
    session_destroy();
    //header('location:http://localhost/website2-main/');(opsi ke 2 buat log out)
?>
<script>
    alert('anda berhasil logout');
    window.location.href='http://localhost/website2-main/';
</script>