
<html>
<head>
<title>Ching's Cars - Home</title>
</head>
<body>

<h1>Welcome to Ching's Cars!</h1>
<p>We sell cars</p>

<img src="celica.gif" alt="celica">
 
<?php 
/*
$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership"; 

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT d.regNo, d.make, d.brand, d.yearMade, d.price 
        FROM dscar d
        LEFT JOIN dscustomer c ON d.regNo = c.customervehicle
        WHERE c.customerID IS NULL";
		
$result = $conn->query($sql);

echo"<table border = '1'";
echo"<tr><td>Make</td><td>Brand</td><td>Year Manufactured</td><td>Price</td><tr>";
while($row = mysqli_fetch_array($result))
{
echo"<tr><td>{$row['make']}</td><td>{$row['brand']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td><tr>";
	
}
echo "</table>";
mysqli_close($conn);
	
	*/
?>



<p>Do you like what you see? </p>
 <a href="order.php">Order a car</a> 
 <p> Already have a car from us? </p>
  <a href="service.html">Book your car in for a repair</a> 
  <br>
  
<p>Do you work here? Login here </p>
<a href="manager.html">Manager Login</a> 
<a href="employees.php">Employee Login</a> 
  
  
  
</body>
</html> 