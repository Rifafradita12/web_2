<?php
require_once 'header.php';
require_once 'sidebar.php';

require '../dbkoneksi.php';

if (isset($_POST["submit"])) {
    $_nama = $_POST['nama'];
    $_gender = $_POST['gender'];
    $_tmp_lahir = $_POST['tmp_lahir'];
    $_tgl_lahir = $_POST['tgl_lahir'];
    $_kategori = $_POST['kategori'];
    $_telepon = $_POST['telepon'];
    $_alamat = $_POST['alamat'];
    $_unit_kerja_id = $_POST['unit_kerja_id'];
    
    $data = [$_nama, $_gender, $_tmp_lahir, $_tgl_lahir, $_kategori, $_telepon, $_alamat, $_unit_kerja_id];
    
    $sql = "INSERT INTO dokter (nama, gender, tmp_lahir, tgl_lahir, kategori, telepon, alamat, unit_kerja_id) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
    
    echo "<script>window.location.href = 'index.php';</script>";
}
?>

<div class="content-wrapper">
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
                    <!-- Default box -->
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
                            <form action="add.php" method="POST">
                                <div class="form-group row">
                                    <label for="nama" class="col-4 col-form-label">Nama</label>
                                    <div class="col-8">
                                        <input id="nama" name="nama" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="gender" class="col-4 col-form-label">Jenis Kelamin</label>
                                    <div class="col-8">
                                        <select id="gender" name="gender" class="custom-select">
                                            <option value="L">Laki-Laki</option>
                                            <option value="P">Perempuan</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="tmp_lahir" class="col-4 col-form-label">Tempat Lahir</label>
                                    <div class="col-8">
                                        <input id="tmp_lahir" name="tmp_lahir" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="tgl_lahir" class="col-4 col-form-label">Tanggal Lahir</label>
                                    <div class="col-8">
                                        <input id="tgl_lahir" name="tgl_lahir" type="date" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="kategori" class="col-4 col-form-label">Kategori</label>
                                    <div class="col-8">
                                        <select id="kategori" name="kategori" class="custom-select">
                                            <option value="Umum">Umum</option>
                                            <option value="Spesialis">Spesialis</option>
                                            <option value="bidan">Bidan</option>
                                            <option value="bedah">Bedah</option>
                                            <option value="dokter gigi">Dokter Gigi</option>
                                            <option value="anastesi">Anastesi</option>
                                            <option value="ginekologi">Ginekologi</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="telepon" class="col-4 col-form-label">Telepon</label>
                                    <div class="col-8">
                                        <input id="telepon" name="telepon" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="alamat" class="col-4 col-form-label">Alamat</label>
                                    <div class="col-8">
                                        <input id="alamat" name="alamat" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="unit_kerja_id" class="col-4 col-form-label">Unit Kerja ID</label>
                                    <div class="col-8">
                                        <input id="unit_kerja_id" name="unit_kerja_id" type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="offset-4 col-8">
                                        <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
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
