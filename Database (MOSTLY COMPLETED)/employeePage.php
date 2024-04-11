<html>
<head>
<title> Employee Menu </title>
</head>
<body>
<h1>Welcome to the Employee Menu!</h1>
<p>Here is the list of all of the cars registered with the dealership:</p>
<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM dscar ORDER BY model ASC"; 
		
$result = mysqli_query($conn, $sql);

echo "<table border='1'>";
echo "<tr><td>Brand</td><td>Model</td><td>Year Manufactured</td><td>Price</td></tr>";

while ($row = mysqli_fetch_array($result)) {
    echo "<tr><td>{$row['brand']}</td><td>{$row['model']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td></tr>";
}

echo "</table>";

mysqli_close($conn);

?>
<p>Dealership functions:</p>
 <a href="addCar.php">Add a new car to the dealership</a><br>
 <a href="viewServices.php">View services</a><br> 
 <a href="home.php">LOGOUT</a> 
  <br>
</body>
</html>
