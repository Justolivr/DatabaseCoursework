
<html>
<head>
<title>Order cars</title>
</head>
<body>

<h1>Order a car</h1>
<p> The following cars are available to order</p>


<?php 

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
        LEFT JOIN dscustomer c ON d.regNo = c.regNo
        WHERE c.customerID IS NULL";
		
$result = $conn->query($sql);

echo"<table border = '1'";
echo"<tr><td>regNo</td><td>Make</td><td>Brand</td><td>Year Manufactured</td><td>Price</td><tr>";
while($row = mysqli_fetch_array($result))
{
echo"<tr><td>{$row['regNo']}</td><td>{$row['make']}</td><td>{$row['brand']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td><tr>";
	
}
echo "</table>";
mysqli_close($conn);
?>

<h1> Enter your details to order a car</h1>
 <form action="createOrder.php">
  <label for="regNo">Reg number of car to buy:</label><br>
  <input type="text" id="regNo" name="regNo"><br>
 <label for="address">Address:</label><br>
  <input type="text" id="address" name="address"><br>
  <label for="postcode">postcode:</label><br>
  <input type="text" id="postcode" name="postcode"><br>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
  <br>
    <input type="submit" value="Submit">
</form> 








</html> 