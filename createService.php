<!DOCTYPE html>
<html>
<head>
    <title>Ching's cars</title>
</head>
<body>

<h1>Ching's cars </h1>

<?php

$regNo = $_POST["regNo"];
$dateLastServiced = $_POST["dateLastServiced"];
$nextService = $_POST["nextService"];
$problemdesc = $_POST["problemdesc"];

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

$sql = "INSERT IGNORE INTO dsservice (empID,regNo,dateLastServiced,nextService,problemdesc)
VALUES ('$randomID', '$regNo', '$dateLastServiced','$nextService','$problemdesc')";

if (mysqli_query($conn, $sql)) {
echo "New record inserted successfully";
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


mysqli_close($conn);
?>

</body>
</html>