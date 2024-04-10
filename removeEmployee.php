
<html>
<head>
    <title>Remove Employee</title>
</head>
<body>
    <h2>Remove Employee</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" required><br><br>

        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Remove Employee">
    </form>

    <!-- Link back to manager menu -->
    <a href="updateEmployees.php">TAKE ME BACK!</a>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST['firstname']) && isset($_POST['lastname']) && isset($_POST['password'])) {
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $userPassword = $_POST['password'];

        $servername = "localhost";
        $username = "root";
        $dbPassword = "";
        $database = "car_dealership";

        $conn = mysqli_connect($servername, $username, $dbPassword, $database);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Check if the employee exists and the password is correct
        $sql = "SELECT * FROM dsemployee WHERE firstname = '$firstname' AND lastname = '$lastname'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $storedPassword = $row['password'];
            $empID = $row['empID'];

            // Verify the password
            if ($userPassword === $storedPassword) {
                // Check if the employee is a manager
                $managerCheckSql = "SELECT * FROM dsmanager WHERE manID = $empID";
                $managerCheckResult = mysqli_query($conn, $managerCheckSql);

                if (mysqli_num_rows($managerCheckResult) > 0) {
                    echo "This employee is a manager. Managers cannot be removed.";
                } else {
                    // Password matched and employee is not a manager, proceed with deletion
                    $delete_sql = "DELETE FROM dsemployee WHERE empID = $empID";

                    if (mysqli_query($conn, $delete_sql)) {
                        echo "Employee removed successfully.";
                    } else {
                        echo "Error: " . $delete_sql . "<br>" . mysqli_error($conn);
                    }
                }
            } else {
                echo "Incorrect password. Please try again.";
            }
        } else {
            echo "Employee not found. Please check the employee's name.";
        }

        mysqli_close($conn);
    } else {
        echo "All fields are required.";
    }
}
?>

</body>
</html>