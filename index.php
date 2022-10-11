<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
</head>

<body>
    <table border="1">
        <tr>
            <td>
                Id
            </td>
            <td>
                Nama
            </td>
            <td>
                Aksi
            </td>
        </tr>
        <?php
        $query = mysqli_query($koneksi, "SELECT * FROM ukt");

        foreach ($query as $data) {
        ?>
            <tr>
                <td>
                    <?php echo $data['id']; ?>
                </td>
                <td>
                    <?php echo $data['nama_mahasiswa']; ?>
                </td>
                <td>
                    <a href="detail.php?id=<?php echo $data['id']; ?>">Detail</a>
                </td>
            </tr>

        <?php } ?>
    </table>
</body>

</html>