<?php
require '../dbkoneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    try {
        $dbh->beginTransaction();

        $sqlDeletePeriksa = "DELETE FROM periksa WHERE pasien_id = ?";
        $stmtDeletePeriksa = $dbh->prepare($sqlDeletePeriksa);
        $stmtDeletePeriksa->execute([$id]);

        $sql = "DELETE FROM pasien WHERE id = ?";
        $stmt = $dbh->prepare($sql);
        $stmt->execute([$id]);

        $dbh->commit();

        header("Location: index.php");
        exit();
    } catch (PDOException $e) {
        $dbh->rollBack();
        echo "Error: " . $e->getMessage();
        exit;
    }
} else {
    echo "Parameter ID tidak ditemukan.";
    exit;
}
?>
