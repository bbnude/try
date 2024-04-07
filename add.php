<?php
// process_form.php

// Assuming you have a MySQL database
$servername = 'localhost';
$username = "root";
$password = "";
$dbname = "tutorial";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve form data
$name = $_POST['Username'];
$email = $_POST['Email'];
$age = $_POST['Age'];
$psw = $_POST['Password'];

// Check if required fields are empty
if (empty($name) || empty($age) || empty($email) || empty($psw)) {
    echo '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Form Processing</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
            }

            .container {
                text-align: center;
            }

            .error-message {
                color: red;
                font-size: 18px;
                font-weight: bold;
                margin-top: 50px;
            }
            .error-message{
                color: red;
                font-size: 100px;
                font-weight: bold;
                margin-top: 300px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <p class="error-message">Please fill in all the required fields!</p>
        </div>
    </body>
    </html>';
    // Close the connection
    $conn->close();
    exit(); // Stop further execution
}

// Insert data into the database with plain text password (not recommended)
$sql = "INSERT INTO users (Username, Age, Email, Password) VALUES ('$name', $age, '$email', '$psw')";
if ($conn->query($sql) === TRUE) {
    // Data inserted successfully, redirect to the next page
    header("Location: index.html");
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close the connection
$conn->close();
?>
