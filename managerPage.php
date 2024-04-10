<html>
<head>
<title> Manager Menu </title>
</head>
<body>
<h1>Welcome to the Manager Menu!</h1>
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

$sql = "SELECT * FROM dscar ORDER BY price ASC"; 
		
$result = mysqli_query($conn, $sql);

echo "<table border='1'>";
echo "<tr><td>Make</td><td>Brand</td><td>Year Manufactured</td><td>Price</td></tr>";

while ($row = mysqli_fetch_array($result)) {
    echo "<tr><td>{$row['make']}</td><td>{$row['brand']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td></tr>";
}

echo "</table>";

mysqli_close($conn);

?>
<p>Dealership functions:</p>
 <a href="updateCars.php">Add a new car to the dealership</a>
 <p> Help customers:</p>
 <a href="order.php">Help a customer order a car</a> 
 <a href="service.php">Book a customer's car in for a service</a> 
 <p>Community functions: </p>
 <a href ="updateEmployees.php">View all employees, Add new employees, or remove old gangly employees</a>
  <br>
  
<p>Do you work here? Login here </p>
<a href="login.php">Employee Login</a> 
</body>
</html>