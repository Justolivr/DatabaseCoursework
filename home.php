
<html>
<head>
<title>Ching's Cars - Home</title>
</head>
<body>

<h1>Welcome to Ching's Cars!</h1>
<p>We sell cars</p>

<img src="celica.gif" alt="celica">
 
 
 

<?php 

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership"; 

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}



$sql = "SELECT * FROM dscar  ORDER BY PRICE DESC LIMIT 5";
		
$result = $conn->query($sql);


echo "<br>";
echo "Heres a selection of our cars we think you'd might like:";

echo"<table border = '1'";
echo"<tr><td>Make</td><td>Brand</td><td>Year Manufactured</td><td>Price</td><tr>";
while($row = mysqli_fetch_array($result))
{
echo"<tr><td>{$row['make']}</td><td>{$row['brand']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td><tr>";
	
}
echo "</table>";
mysqli_close($conn);
	
	
?>



<p>Want a car? </p>
 <a href="order.php">Order a car</a> 
 <p> Already have a car from us? </p>
  <a href="service.php">Book your car in for a repair</a> 
  <br>
  
<p>Do you work here? Login here </p>
<a href="login.php">Login here</a> 
  
  
  
</body>
</html> 