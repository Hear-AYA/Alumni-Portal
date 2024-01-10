<?php
include 'header.php';
?>

<head>
    <!-- Other head elements... -->
    <link rel="stylesheet" type="text/css" href="css/mapping.css">
</head>

    <div class="container1" style="margin-top:-20px;">
        <?php 
            include 'details.php';
        ?>
        <div class="container2">
            <div class="job">
                <!-- Query Form -->
                <form class="edit-form" method="POST">
                    <div>
                        <label>Do you have a question?</label><br>
                        <textarea class="form" name="user_question"></textarea>
                    </div>
                    <button class="btn btn-primary" name="submit_question">Add Query</button>
                </form>

                <?php
                // Include the necessary database connection code
                include 'connect.php';

                // Handle query submission
                if(isset($_POST['submit_question'])){
                    $user_question = $_POST['user_question'];

                    // Save the question to a database table (you need to create a table for queries)
                    // Example code to insert into a table named 'queries'
                    $query = "INSERT INTO queries (user_question) VALUES ('$user_question')";
                    if ($conn->query($query) === TRUE) {
                        echo '<p class="success-message">Your question has been submitted. An administrator will respond shortly.</p>';
                    } else {
                        echo '<p class="error-message">Error submitting question: ' . $conn->error . '</p>';
                    }
                }
                ?>

                <!-- Display Queries and Replies -->
                <div class="queries">
                    <?php
                    // Example code to retrieve queries from the 'queries' table
                    $query = "SELECT * FROM queries";
                    $result = $conn->query($query);

                    while($row = $result->fetch_assoc()) {
                        echo '<div class="query">';
                        echo '<p>' . $row['user_question'] . '</p>';
                        
                        // Check if there is an admin reply
                        if (!empty($row['admin_reply'])) {
                            echo '<div class="admin-reply">';
                            echo '<p><strong>Admin Reply:</strong></p>';
                            echo '<p>' . $row['admin_reply'] . '</p>';
                            echo '</div>';
                        }
                        
                        echo '</div>';
                    }                    
                    ?>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
