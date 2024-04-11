
<html>
<head>
    <title>Ching's Cars</title>
</head>
<body>

<h2>Book a car in for repair</h2>

<form action="createService.php" method="post">
    

    <label for="regNo">Select your car's reg number:</label>
    <select name="regNo" id="regNo">
        <?php
       
    $servername = 'localhost';
	$username = 'root';
	$password = '';
	$database = 'car_dealership';

	$conn = mysqli_connect($servername, $username, $password, $database);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT regNo FROM dscar WHERE customerID IS NULL ORDER BY dscar.regNo ASC";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                 echo "<option value='" . $row['regNo'] . "'>" . $row['regNo'] . "</option>";
            }
        } else {
            echo "<option value=''>No cars available</option>";
        }

        $conn->close();
        ?>
    </select><br><br>




	
	<label for="dateLastServiced">date last serviced:</label><br>
	<input type="date" id="dateLastServiced" name="dateLastServiced"><br>
	
	<label for="nextService">next service date (consult your vehicle handbook):</label><br>
	<input type="date" id="nextService" name="nextService"><br>
	
	<label for="problemdesc">Describe the problem with your car:</label><br>
	<input type="text" id="problemdesc" name="problemdesc"><br>
	
	<input type="submit" value="Submit">
</form>

</body>
</html>