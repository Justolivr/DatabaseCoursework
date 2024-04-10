
<html>
<head>
<title>Order cars</title>
</head>
<body>



<?php 

echo "hello world!";

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership"; 

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

echo $_POST["regNo"];





?>










</html> 