
<html>
<head>
<title>Ching's Cars - Home</title>
</head>
<body>

<h1>Welcome to Ching's Cars!</h1>
<p>I offer these cars for you at best price</p>

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

<p>Do you like what you see? </p>
 <a href="order.html">Order a car</a> 
 <p> Already have a car from us? </p>
  <a href="service.html">Book your car in for a repair</a> 
  
  <br>
  
<p>Do you work here? Login here </p>
<a href="order.html">Manager Login</a> 
<a href="service.html">Employee Login</a> 
  
  
  
</body>
</html> 