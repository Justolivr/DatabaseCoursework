
<html>
<head>
<title>Order cars</title>
</head>
<body>



<?php 


if ($_SERVER["REQUEST_METHOD"] == "POST") {

$servername = 'localhost';
$username = 'root';
$password = '';
$database = 'car_dealership';

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

$regNo = $_POST["regNo"];
$address = $_POST["address"];
$postcode = $_POST["postcode"];

$firstname = $_POST["firstname"];
$surname = $_POST["surname"];
$phoneNo = $_POST["phoneNo"];






$sql = "INSERT INTO dscustomer (regNo, address, postcode, firstname, surname, phoneNo)
VALUES ('$regNo','$address', '$postcode', '$firstname', '$surname', '$phoneNo')";

if (mysqli_query($conn, $sql)) {
echo "New record inserted successfully";
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
}


?>


</body>
</html> 