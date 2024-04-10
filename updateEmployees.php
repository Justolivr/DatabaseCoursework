<html>
<head>
<title> Employee Settings </title>
</head>
<body>
<h1>Welcome to the Employee Settings!</h1>
<p>Here is the list of all of the employees:</p>
<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM dsemployee ORDER BY empID ASC"; 
		
$result = mysqli_query($conn, $sql);

echo "<table border='1'>";
echo "<tr><td>Employee ID</td><td>First Name</td><td>Last Name</td><td>Date of Birth</td><td>Gender</td><td>Salary</td></tr>";

while ($row = mysqli_fetch_array($result)) {
    echo "<tr><td>{$row['empID']}</td><td>{$row['firstname']}</td><td>{$row['lastname']}</td><td>{$row['dateofbirth']}</td><td>{$row['gender']}</td><td>{$row['salary']}</td></tr>";
}

echo "</table>";

mysqli_close($conn);


?>
<form action="addEmployee.php" method="post">
    <button type="submit">Add New Employee</button>
</form>
<form action="removeEmployee.php" method="post">
    <button type="submit">Remove Employee</button>
</form>
 <a href="managerPage.php">TAKE ME BACK!</a>
</body>
</html>