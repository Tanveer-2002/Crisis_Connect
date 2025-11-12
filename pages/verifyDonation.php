<?php
session_start();
include '../dbConnect.php';

$donation_id = $_POST['donation_id'];
$user_id = $_SESSION['user_id'];

$sql_update = "UPDATE donations SET is_varified = TRUE, varified_by = '$user_id'  WHERE donation_id = '$donation_id'";
mysqli_query($connect, $sql_update);

header("Location: admin.php");
exit();
?>
