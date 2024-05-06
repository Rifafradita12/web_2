<?php
require '../dbkoneksi.php'; 


if(isset($_GET['id'])) {
    
    $sql = "DELETE FROM periksa WHERE id = ?";
    $stmt = $dbh->prepare($sql);
    
   
    $stmt->bindParam(1, $_GET['id']);


    if ($stmt->execute()) {

        header("Location: index.php");
        exit();
    } else {
    
        echo "Error deleting record.";
    }
} else {

    echo "ID parameter is missing.";
}
?>
