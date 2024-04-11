<?php

//establish connection phpMyAdmin server
$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//recieves user entered text from html form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if form fields are set before accessing them
    if(isset($_POST['regNo']) && isset($_POST['brand']) && isset($_POST['model']) && isset($_POST['yearMade']) && isset($_POST['price'])) {
        $regNo = $_POST['regNo'];
        $brand = $_POST['brand'];
        $model = $_POST['model'];
        $yearMade = $_POST['yearMade'];
        $price = $_POST['price'];

        // Set customerID to NULL to indicate that the car is not owned by anyone
        $sql = "INSERT INTO dscar (regNo, brand, model, yearMade, price, customerID) VALUES ('$regNo', '$brand', '$model', '$yearMade', '$price', NULL)";

        //if statement executes based on whether query was successfully executed
        if (mysqli_query($conn, $sql)) {
            echo "New car added successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    } else {
        echo "All fields are required.";
    }
}

//close connection to phpMyAdmin server
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add a new car to the dealership</title>
</head>
<body>
    <h2>Add a new car to the dealership</h2>

    <!-- send data from html form to php form for processing -->
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="regNo">Registration Number:</label>
        <input type="text" id="regNo" name="regNo" maxlength="7" required><br><br>

        <label for="brand">Brand of car:</label>
        <input type="text" id="brand" name="brand" required><br><br>

        <label for="model">Car Model:</label>
        <input type="text" id="model" name="model" required><br><br>

        <label for="yearMade">Year of model:</label>
        <input type="text" id="yearMade" name="yearMade" maxlength="4" required><br><br>
        
        <label for="price">Price of vehicle:</label>
        <input type="number" id="price" name="price" required><br><br>
        <!-- submits entered information php file when pressed -->
        <input type="submit" value="Add Car to dealership">
    </form>
    
     <a href="updateCars.php">TAKE ME BACK!</a>
</body>
</html> 
