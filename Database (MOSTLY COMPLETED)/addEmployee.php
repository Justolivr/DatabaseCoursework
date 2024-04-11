<?php
//establish connection to phpMyAdmin database
$servername = "localhost";
$username = "root";
$password = "";
$database = "car_dealership";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//receives text information from html form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if form fields are set before accessing them
    if(isset($_POST['firstname']) && isset($_POST['lastname']) && isset($_POST['dateofbirth']) && isset($_POST['gender']) && isset($_POST['salary']) && isset($_POST['password'])) {
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $dateofbirth = $_POST['dateofbirth'];
        $gender = $_POST['gender'];
        $salary = $_POST['salary'];
		$password = $_POST['password'];

	    //SQL insert query to insert user entered information into table
        $sql = "INSERT INTO dsemployee (firstname, lastname, dateofbirth, gender, salary, password) VALUES ('$firstname', '$lastname', '$dateofbirth', '$gender', '$salary', '$password')";

	    //displays text based on whether query was successfully executed
        if (mysqli_query($conn, $sql)) {
            echo "New employee added successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    } else {
        echo "All fields are required.";
    }
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
</head>
<body>
    <h2>Add Employee</h2>
	<!-- pass information from html form to php file for processing-->
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="firstname">First Name:</label>
        <input type="text" id="firstname" name="firstname" required><br><br>

        <label for="lastname">Last Name:</label>
        <input type="text" id="lastname" name="lastname" required><br><br>

        <label for="dateofbirth">Date of Birth:</label>
        <input type="date" id="dateofbirth" name="dateofbirth" required><br><br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="M">Male</option>
            <option value="F">Female</option>
        </select><br><br>
        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" required><br><br>
<label for="password">Password (Max 15 characters):</label>
        <input type="text" id="password" name="password" maxlength="15" required><br><br>
        <input type="submit" value="Add Employee">
    </form>
	 <a href="managerPage.php">TAKE ME BACK!</a>
</body>
</html>
