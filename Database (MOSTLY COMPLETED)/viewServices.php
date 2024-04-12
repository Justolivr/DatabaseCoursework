<html>
<head>
<title> Services </title>
</head>
<body>
<h1> Services menu </h1>
<p>The following cars are due to be serviced</p>

<?php
//establish connection to database
$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//displays information about services
$sql = "SELECT dsservice.serviceID, dsservice.regNo, dsservice.dateLastServiced, dsservice.nextService, dsservice.problemDesc, dsemployee.firstname, dsemployee.lastname, dscustomer.firstname AS customer_firstname, dscustomer.lastname AS customer_lastname, dscustomer.phoneNo FROM dsservice INNER JOIN dsemployee ON dsservice.empID = dsemployee.empID INNER JOIN dscar ON dsservice.regNo = dscar.regNo INNER JOIN dscustomer ON dscar.customerID = dscustomer.customerID";

		
$result = mysqli_query($conn, $sql);

//format sql result into table
echo "<table border='1'>";
echo "<tr><td>Service ID</td><td>Reg Number</td><td>Date Last Serviced</td><td>Next Service</td><td>Problem Description</td><td>Employee Name</td><td>Customer Name</td><td>Phone Number</td></tr>";

while ($row = mysqli_fetch_array($result)) {
    $employeeName = $row['firstname'] . ' ' . $row['lastname'];
    $customerName = $row['customer_firstname'] . ' ' . $row['customer_lastname'];
    echo "<tr><td>{$row['serviceID']}</td><td>{$row['regNo']}</td><td>{$row['dateLastServiced']}</td><td>{$row['nextService']}</td><td>{$row['problemDesc']}</td><td>{$employeeName}</td><td>{$customerName}</td><td>{$row['phoneNo']}</td></tr>";
}

echo "</table>";

mysqli_close($conn);

?>
<p>Completed a service?</p>
 <a href= "service.php">Create a service</a><br>
 <a href="removeService.php">Delete a service </a><br>
 <a href = "home.php">GO BACK HOME!</a>

  
</body>
</html> 
