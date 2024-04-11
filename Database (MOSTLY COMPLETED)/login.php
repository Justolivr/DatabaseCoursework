<html>
<head>
    <title>Login as an employee or manager</title>
</head>
<body>
    <h1>Login as an employee or manager</h1>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="container">
            <label for="employeeID"><b>Employee ID</b></label>
            <input type="text" placeholder="Enter Employee ID" name="employeeID" required>

            <label for="employeePassword"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="employeePassword" required>
           
            <button type="submit">Login</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me?
            </label>
            <button type="button" class="cancelbtn">Cancel</button>
            <span class="employeePassword">Forgot <a href="#">password?</a></span>
        </div>
    </form>

    <?php
    // PHP code for authentication
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Establish a connection to your database
        $db_host = "localhost";
        $db_user = "root";
        $db_pass = "";
        $db_name = "car_dealership";

        $conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        // Retrieve values entered in the form fields
        $empID = $_POST['employeeID'];
        $password = $_POST['employeePassword'];

        // Query your database to check if the employee is a manager
        $sql_manager = "SELECT empID FROM dsmanager WHERE empID = '$empID'";
        $result_manager = mysqli_query($conn, $sql_manager);

        // Check if the employee is a manager
        if (mysqli_num_rows($result_manager) == 1) {
            // Authentication successful for a manager, redirect to manager page
            header("Location: managerPage.php");
            exit();
        }

        // Query your database to check for a matching record in the employee table
        $sql_employee = "SELECT * FROM dsemployee WHERE empID = '$empID' AND password = '$password'";
        $result_employee = mysqli_query($conn, $sql_employee);

        // Check if any rows were returned
        if (mysqli_num_rows($result_employee) == 1) {
            // Authentication successful for an employee, redirect to employee page
            header("Location: employeePage.php");
            exit();
        } else {
            // Invalid credentials, display error message
            echo "<p style='color: red;'>Invalid username or password. Please try again.</p>";
        }

        // Close the database connection
        mysqli_close($conn);
    }
    ?>
</body>
</html>