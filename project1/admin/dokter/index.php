<?php
require_once 'header.php';
require_once 'sidebar.php';
?>


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Dokter Puskesmas Mulyaharja</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="content">

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Data Dokter Puskesmas Mulyaharja</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="add.php"><button class="btn btn-primary mb-1">Tambah Data</button></a>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nama</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Tempat Lahir</th>
                                        <th>Tanggal Lahir</th>
                                        <th>Kategori</th>
                                        <th>Telepon</th>
                                        <th>Alamat</th>
                                        <th>Unit Kerja</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    require '../dbkoneksi.php';
                                    $query = $dbh->query("SELECT dokter.*, unit_kerja.nama AS nama_unit_kerja FROM dokter LEFT JOIN unit_kerja ON dokter.unit_kerja_id = unit_kerja.id");
                                    foreach ($query as $row) {
                                        echo "<tr>";
                                        echo "<td>" . $row['id'] . "</td>";
                                        echo "<td>" . $row['nama'] . "</td>";
                                        echo "<td>" . $row['gender'] . "</td>";
                                        echo "<td>" . $row['tmp_lahir'] . "</td>";
                                        echo "<td>" . $row['tgl_lahir'] . "</td>";
                                        echo "<td>" . $row['kategori'] . "</td>";
                                        echo "<td>" . $row['telepon'] . "</td>";
                                        echo "<td>" . $row['alamat'] . "</td>";
                                        echo "<td>" . $row['nama_unit_kerja'] . "</td>"; // Display unit kerja name
                                        echo "<td>";
                                        echo "<a href='edit.php?id=" . $row['id'] . "'><button class='btn btn-primary'>Edit</button></a>";
                                        echo "<a href='delete.php?id=" . $row['id'] . "' onclick='return confirm(\"Yakin Hapus Data?\")'><button class='btn btn-secondary'>Hapus</button></a>";
                                        echo "</td>";
                                        echo "</tr>";
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer">
                            Footer
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
require_once 'footer.php';
?>
