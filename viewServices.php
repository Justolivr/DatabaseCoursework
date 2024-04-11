<html>
<head>
<title> Services </title>
</head>
<body>
<h1> Services menu </h1>
<p>The following cars are due to be serviced</p>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM dsservice"; 
		
$result = mysqli_query($conn, $sql);

echo "<table border='1'>";
echo "<tr><td>serviceID</td><td>empID</td><td>regNo</td><td>dateLastServiced</td><td>nextService</td><td>Problem Description</td></tr>";

while ($row = mysqli_fetch_array($result)) {
    echo "<tr><td>{$row['serviceID']}</td><td>{$row['empID']}</td><td>{$row['regNo']}</td><td>{$row['dateLastServiced']}</td><td>{$row['nextService']}</td><td>{$row['problemdesc']}</td></tr>";
}

echo "</table>";

mysqli_close($conn);

?>
<p>Completed a service?</p>
 <a href="removeService.php">Delete a service </a>


  
</body>
</html>