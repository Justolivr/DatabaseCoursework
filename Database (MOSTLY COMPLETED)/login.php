<html>
<head>
    <title>Login as an employee or manager</title>
</head>
<body>
    <h1>Login as an employee or manager</h1>
	<!-- form data is sent to php code in file for processing -->
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

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        //establish connection into database
        $db_host = "localhost";
        $db_user = "root";
        $db_pass = "";
        $db_name = "car_dealership";

        $conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

		//input html form data into variables
        $empID = $_POST['employeeID'];
        $password = $_POST['employeePassword'];
		
		//check if employee is manager
        $sql_manager = "SELECT empID FROM dsmanager WHERE empID = '$empID'";
        $result_manager = mysqli_query($conn, $sql_manager);

        // if employee is manager, redirect to manager page
        if (mysqli_num_rows($result_manager) == 1) {
            header("Location: managerPage.php");
            exit();
        }

        //check if login details match details stored in database
        $sql_employee = "SELECT * FROM dsemployee WHERE empID = '$empID' AND password = '$password'";
        $result_employee = mysqli_query($conn, $sql_employee);

        
        if (mysqli_num_rows($result_employee) == 1) {
            //redirects for employees
            header("Location: employeePage.php");
            exit();
        } else {
            // invalid credentials, display error message
            echo "<p style='color: red;'>Invalid username or password. Please try again.</p>";
        }

       
        mysqli_close($conn);
    }
    ?>
</body>
</html>