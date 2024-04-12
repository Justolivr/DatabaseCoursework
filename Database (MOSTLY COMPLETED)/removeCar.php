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

$selectedRegNo = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['regNo'])) {
        $selectedRegNo = $_POST['regNo'];
    }

    if (isset($_POST['confirm'])) {
        // remove the selected car from the database
        $sql_deleteCar = "DELETE FROM dscar WHERE regNo='$selectedRegNo'";
        if (mysqli_query($conn, $sql_deleteCar)) {
            echo "Car removed successfully.";
        } else {
            echo "Error: " . $sql_deleteCar . "<br>" . mysqli_error($conn);
        }
    }
}

mysqli_close($conn);
?>


<html>
<head>
    <title>Remove Car</title>
</head>
<body>
    <h2>Remove Car from the Dealership</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="regNo">Select Registration Number:</label>
        <select id="regNo" name="regNo" onchange="this.form.submit()">
            <option value="">Select Registration Number</option>
            <?php
            $conn = mysqli_connect($servername, $username, $password, $database);
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }
			
			//displays reg numbers of cars to be removed which are not currently owned by anyone
            $sql = "SELECT regNo FROM dscar WHERE customerID IS NULL ORDER BY model ASC";
            $result = mysqli_query($conn, $sql);

			//format sql result into drop down menu
            while ($row = mysqli_fetch_assoc($result)) {
                $selected = ($row['regNo'] == $selectedRegNo) ? 'selected' : '';
                echo "<option value='" . $row['regNo'] . "' $selected>" . $row['regNo'] . "</option>";
            }

            mysqli_close($conn);
            ?>
        </select><br><br>

        <?php
        if ($selectedRegNo != "") {
            $conn = mysqli_connect($servername, $username, $password, $database);
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
            }
			//select car with matching reg number
            $sql_carDetails = "SELECT * FROM dscar WHERE regNo='$selectedRegNo'";
            $result_carDetails = mysqli_query($conn, $sql_carDetails);

            if ($result_carDetails && mysqli_num_rows($result_carDetails) > 0) {
                $row_carDetails = mysqli_fetch_assoc($result_carDetails);
                ?>
                <label for="carDetails">Car Details:</label><br>
                <table border="1">
				<!-- displays data about the car to be removed -->
                    <tr>
                        <td>Brand:</td>
                        <td><?php echo $row_carDetails['brand']; ?></td>
                    </tr>
                    <tr>
                        <td>Model:</td>
                        <td><?php echo $row_carDetails['model']; ?></td>
                    </tr>
                    <tr>
                        <td>Year Manufactured:</td>
                        <td><?php echo $row_carDetails['yearMade']; ?></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td><?php echo $row_carDetails['price']; ?></td>
                    </tr>
                </table><br><br>
                <?php
            } else {
            }
            mysqli_close($conn);
        }
        ?>

        <input type="submit" name="confirm" value="Remove Car">
    </form>
    <a href="updateCars.php">Take me back!</a>
</body>
</html>
