<html>
<head>
    <title>Ching's cars</title>
</head>
<body>

<h1>Ching's cars </h1>

<?php

$regNo = isset($_POST["regNo"]) ? $_POST["regNo"] : "";
$dateLastServiced = isset($_POST["dateLastServiced"]) ? $_POST["dateLastServiced"] : "";
$nextService = isset($_POST["nextService"]) ? $_POST["nextService"] : "";
$problemDesc = isset($_POST["problemDesc"]) ? $_POST["problemDesc"] : "";

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

$sql = "INSERT IGNORE INTO dsservice (empID,regNo,dateLastServiced,nextService,problemDesc)
VALUES ('$randomID', '$regNo', '$dateLastServiced','$nextService','$problemDesc')";

if (mysqli_query($conn, $sql)) {
    echo "Thank you! Your service has been successfully booked.";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>
<br>
<a href = "home.php">GO BACK TO HOME</a>
</body>
</html>
