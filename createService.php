<!DOCTYPE html>
<html>
<head>
    <title>Ching's cars</title>
</head>
<body>


<?php

$regNo = $_POST["regNo"];
$dateLastServiced = $_POST["dateLastServiced"];
$nextService = $_POST["nextService"];


$servername = 'localhost';
$username = 'root';
$password = '';
$database = 'car_dealership';

$conn = mysqli_connect($servername, $username, $password, $database);

$sql = "SELECT empID FROM dsemployee ORDER BY RAND() LIMIT 1";


$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0) {
    
    $row = mysqli_fetch_assoc($result);

    $randomID = $row['empID'];

} else {
    echo "No results found";



}

echo $regNo;
echo "<br>";
echo $randomID;
echo "<br>";
echo $dateLastServiced;
echo "<br>";
echo $nextService;



mysqli_close($conn);
?>

</body>
</html>