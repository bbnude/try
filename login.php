<?php
// login.php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Assuming you have a MySQL database
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'tutorial';

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve form data
    $email = $_POST['Email'];
    $password = $_POST['Password'];

    // Perform SQL query to check user credentials
    $sql = "SELECT * FROM users WHERE Email = '$email' AND Password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Login successful
        // Redirect to the next page
        header("Location: home.html");
        exit(); // Ensure subsequent code is not executed after redirection
    } else {
        // Login failed
        echo '<script>alert("Login failed. Please check your email and password.");</script>';
    }

    // Close the database connection
    $conn->close();
}
?>
