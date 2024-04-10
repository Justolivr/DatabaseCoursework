
<html>
<head>
<title>Employees</title>
</head>
<body>

<h1>Employees</h1>
<p> Enter your employee ID to see current jobs assigned to you </p>


<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership"; 

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM dscar";
$result = $conn->query($sql);

echo"<table border = '1'";
echo"<tr><td>Make</td><td>Brand</td><td>Year Manufactured</td><td>Price</td><tr>";
while($row = mysqli_fetch_array($result))
{
echo"<tr><td>{$row['make']}</td><td>{$row['brand']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td><tr>";
	
}
echo "</table>";
mysqli_close($conn);
	
?>

</body>
</html> 