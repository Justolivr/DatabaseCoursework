<html>
<head>
    <title>Ching's Cars</title>
</head>
<body>

<h2>Book a car in for repair</h2>

<form action="createService.php" method="POST">
    

    <label for="regNo">Select your car's reg number:</label>
    <select name="regNo" id="regNo">
        <?php
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'car_dealership';

        $conn = mysqli_connect($servername, $username, $password, $database);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        $sql = "SELECT regNo FROM dscar ORDER BY dscar.regNo ASC";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<option value='" . $row['regNo'] . "'>" . $row['regNo'] . "</option>";
            }
        } else {
            echo "<option value=''>No cars available</option>";
        }

        mysqli_close($conn);
        ?>
    </select><br><br>

    <label for="dateLastServiced">date last serviced:</label><br>
    <input type="date" id="dateLastServiced" name="dateLastServiced"><br>
    
    <label for="nextService">next service date (consult your vehicle handbook):</label><br>
    <input type="date" id="nextService" name="nextService"><br>
    
    <label for="problemDesc">Describe the problem with your car:</label><br>
    <input type="text" id="problemDesc" name="problemDesc"><br>
    
    <input type="submit" value="Submit">
</form>

</body>
</html>
