<?php 
//recieve html information to process
if ($_SERVER["REQUEST_METHOD"] == "POST") {

//establish connection to database
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
    
    // Check if lastname is set in $_POST array
    $lastname = isset($_POST["lastname"]) ? $_POST["lastname"] : "";
    
    $phoneNo = $_POST["phoneNo"];
    $price = $_POST["price"];
	
	//insert customer details into customer table

    $sql = "INSERT IGNORE INTO dscustomer (address, postcode, firstname, lastname, phoneNo)
            VALUES ('$address', '$postcode', '$firstname', '$lastname', '$phoneNo')";

    $result = mysqli_query($conn, $sql);


	//recieve customerID from customer table and store in variable
    $sql2 = "SELECT customerID FROM dscustomer WHERE firstname = '$firstname' AND lastname = '$lastname'";

    $result = mysqli_query($conn, $sql2);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $variable = $row['customerID'];
    } else {
        echo "No results found";
    }
	
	//update customerID in car table to link a car to a new owner
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

	//inserts order into table
    $sql5 = "INSERT IGNORE INTO dsorder (customerID, empID, regNo, price) VALUES ('$variable', '$randomID', '$regNo', '$price')";
    $result = mysqli_query($conn, $sql5);

    mysqli_close($conn);
}
?>

<h1> Thanks for choosing Ching's Cars </h1>
<p> your order has been placed </p>

<img src="celica.gif" alt="celica">
<a href="home.php">Go Home</a>
