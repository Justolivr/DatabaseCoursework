<html>
<head>
<title>Order cars</title>
</head>
<body>



<?php 


if ($_SERVER["REQUEST_METHOD"] == "POST") {

$servername = 'localhost';
$username = 'root';
$password = '';
$database = 'car_dealership';

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

$regNo = $_POST["regNo"];
$address = $_POST["address"];
$postcode = $_POST["postcode"];

$firstname = $_POST["firstname"];
$surname = $_POST["surname"];
$phoneNo = $_POST["phoneNo"];

$sql = "INSERT INTO dscustomer (address, postcode, firstname, surname, phoneNo)
VALUES ('$address', '$postcode', '$firstname', '$surname', '$phoneNo')";

if (mysqli_query($conn, $sql)) {
echo "New record inserted successfully";
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

$sql2 = "SELECT customerID FROM dscustomer WHERE firstname = '$firstname' AND surname = '$surname'";

// Execute the query
$result = mysqli_query($conn, $sql2);

// Check if the query returned any result
if (mysqli_num_rows($result) > 0) {
    // Fetch the result as an associative array
    $row = mysqli_fetch_assoc($result);

    // Store the value in a variable
    $variable = $row['customerID'];

    // Do something with the variable
    echo $variable;
} else {
    echo "No results found";
}

        //UPDATE dscar SET dscar.customerID = 12 WHERE dscar.regNo = "YM04PFI"; 	

$sql3 = "UPDATE dscar SET dscar.customerID = '$variable' WHERE dscar.regNo = '$regNo'";

if (mysqli_query($conn, $sql3)) {
echo "UPDATED successfully";
} else {
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


mysqli_close($conn);
}


?>


</body>
</html> 