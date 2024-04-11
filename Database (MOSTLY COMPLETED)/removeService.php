<html>
<head>
    <title>Delete Service</title>
</head>
<body>
<h1> Delete service </h1>

<form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    
	<label for="serviceID"><b>serviceID to delete</b></label>
            <input type="text" placeholder="Enter serviceID" name="serviceID" required>
			
    <input type="submit">
</form>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $serviceID = $_POST['serviceID'];

$servername = 'localhost';
$username = 'root';
$password = '';
$database = 'car_dealership';

$conn = mysqli_connect($servername, $username, $password, $database);

$sql = "DELETE FROM dsservice WHERE serviceID = $serviceID";

if (mysqli_query($conn, $sql)) {
echo "deleted successfully";
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}
?>
<br>
<a href="viewServices.php">Go back</a
</body>
</html>