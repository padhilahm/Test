<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail</title>
</head>

<body>

    <table border="1">
        <tr>
            <td>
                Biaya
            </td>
            <td>
                Semester
            </td>
        </tr>
        <?php
        $id = $_GET['id'];
        $query = mysqli_query($koneksi, "SELECT * FROM riwayat WHERE id_ukt = '$id'");
        $query2 = mysqli_query($koneksi, "SELECT * FROM ukt WHERE id = '$id'")->fetch_row();
        foreach ($query as $data) {
        ?>
            <tr>
                <td>
                    <?php echo $data['biaya']; ?>
                </td>
                <td>
                    <?php echo $data['semester']; ?>
                </td>
            </tr>
        <?php } ?>
        <tr>
            <form action="ubah.php" method="post">
                <input type="hidden" value="<?= $id ?>" name="id">
                <td>
                    <input type="submit" name="ubah" value="ubah jadi <?php echo $query2[2] ?>">
                </td>
            </form>
        </tr>
        <tr>
            <td colspan="2">
                <a href="index.php">Kembali</a>
            </td>
        </tr>
    </table>
</body>

</html>