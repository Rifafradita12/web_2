<?php
// Mulai session
session_start();

// Hapus semua variabel sesi
$_SESSION = array();

// Hancurkan sesi
session_destroy();

// Arahkan pengguna kembali ke halaman login
header("Location: login.php");
exit();
?>
