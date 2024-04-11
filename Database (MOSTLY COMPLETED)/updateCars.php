<!DOCTYPE html>
<html>
<head>
    <title>Car Wizard</title>
</head>
<body>
    <h1>Welcome to the Car Wizard!</h1>
    <p>Here are all of the cars listed by the dealership:</p>

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "car_dealership";

    $conn = mysqli_connect($servername, $username, $password, $database);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Query for cars owned by customers
    $sql_owned = "SELECT dscar.*, dscustomer.* FROM dscar INNER JOIN dscustomer ON dscar.customerID = dscustomer.customerID ORDER BY dscar.brand ASC";
    $result_owned = mysqli_query($conn, $sql_owned);

    // Query for cars not owned by customers
    $sql_not_owned = "SELECT * FROM dscar WHERE customerID IS NULL ORDER BY model ASC";
    $result_not_owned = mysqli_query($conn, $sql_not_owned);

    echo "<h2>Cars Owned by Customers:</h2>";
    echo "<table border='1'>";
    echo "<tr><td>Reg Number</td><td>Brand</td><td>Model</td><td>Year Manufactured</td><td>Price</td><td>Customer Name</td><td>Customer Address</td><td>Customer Postcode</td><td>Customer Phone</td></tr>";

    while ($row = mysqli_fetch_array($result_owned)) {
        echo "<tr><td>{$row['regNo']}</td><td>{$row['brand']}</td><td>{$row['model']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td><td><b>{$row['firstname']} {$row['lastname']}</b></td><td><b>{$row['address']}</b></td><td><b>{$row['postcode']}</b></td><td><b>{$row['phoneNo']}</b></td></tr>";
    }

    echo "</table>";

    echo "<h2>Cars Not Owned by Customers:</h2>";
    echo "<table border='1'>";
    echo "<tr><td>Reg Number</td><td>Brand</td><td>Model</td><td>Year Manufactured</td><td>Price</td></tr>";

    while ($row = mysqli_fetch_array($result_not_owned)) {
        echo "<tr><td>{$row['regNo']}</td><td>{$row['brand']}</td><td>{$row['model']}</td><td>{$row['yearMade']}</td><td>{$row['price']}</td></tr>";
    }

    echo "</table>";

    // Query to count the total number of cars in the dealership grouped by brand
    $sql_count_cars_by_brand = "SELECT brand, COUNT(*) AS num_cars FROM dscar GROUP BY brand";
    $result_count_cars_by_brand = mysqli_query($conn, $sql_count_cars_by_brand);

    echo "<h2>Total number of cars in the dealership by brand:</h2>";
    echo "<table border='1'>";
    echo "<tr><td>Brand</td><td>Number of Cars</td></tr>";

    while ($row = mysqli_fetch_array($result_count_cars_by_brand)) {
        echo "<tr><td>{$row['brand']}</td><td>{$row['num_cars']}</td></tr>";
    }

    echo "</table>";

    mysqli_close($conn);
    ?>

    <p>Dealership functions:</p>
    <a href="addCar.php">Add a new car to the dealership</a><br><br>
    <a href="removeCar.php">Remove a car from the dealership</a><br><br>
    <a href="managerPage.php">GO BACK TO HOME</a>
</body>
</html>
