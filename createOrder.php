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
$price = $_POST["price"];

$sql = "INSERT IGNORE INTO dscustomer (address, postcode, firstname, surname, phoneNo)
VALUES ('$address', '$postcode', '$firstname', '$surname', '$phoneNo')";

$result = mysqli_query($conn, $sql);

$sql2 = "SELECT customerID FROM dscustomer WHERE firstname = '$firstname' AND surname = '$surname'";


$result = mysqli_query($conn, $sql2);


if (mysqli_num_rows($result) > 0) {
    
    $row = mysqli_fetch_assoc($result);

    $variable = $row['customerID'];


} else {
    echo "No results found";
}

$sql3 = "UPDATE dscar SET dscar.customerID = '$variable' WHERE dscar.regNo = '$regNo'";

$result = mysqli_query($conn, $sql3);

$sql4 = "SELECT empID FROM dsemployee ORDER BY RAND() LIMIT 1";


$result = mysqli_query($conn, $sql4);


if (mysqli_num_rows($result) > 0) {
    
    $row = mysqli_fetch_assoc($result);

    $randomID = $row['empID'];

} else {
    echo "No results found";



}


$sql5 = "INSERT IGNORE INTO dsorder (customerID, empID, regNo, totalPrice) VALUES ('$variable', '$randomID', '$regNo', '$price')";


$result = mysqli_query($conn, $sql5);

}
mysqli_close($conn);
?>

<h1> Thanks for choosing Ching's Cars </h1>
<p> your order has been placed </p>

<img src="celica.gif" alt="celica">

</body>
</html> 