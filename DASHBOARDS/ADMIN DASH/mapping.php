<?php
include 'header.php';
?>

<head>
    <!-- Other head elements... -->
    <link rel="stylesheet" type="text/css" href="css/mapping.css">
</head>

    <div class="container1" style="margin-top:-20px;">
        <?php 
            include 'navigation.php';
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
                include 'connect/connect.php';

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

                    if ($result !== FALSE) {
                        if ($result->num_rows > 0) {
                            while($row = $result->fetch_assoc()) {
                                echo '<div class="query">';
                                echo '<p>' . $row['user_question'] . '</p>';
                                
                                // Add a form for admin to reply to the query
                                echo '<form method="POST">';
                                echo '<input type="hidden" name="query_id" value="' . $row['id'] . '">';
                                echo '<textarea name="admin_reply" placeholder="Admin Reply"></textarea>';
                                echo '<button type="submit" name="submit_reply">Post Reply</button>';
                                echo '</form>';
                                
                                echo '</div>';
                            }
                        } else {
                            echo '<p>No queries found.</p>';
                        }
                    } else {
                        echo '<p class="error-message">Error retrieving queries: ' . $conn->error . '</p>';
                    }
                    ?>
                </div>

                <?php
                // Handle admin replies
                if(isset($_POST['submit_reply'])){
                    $query_id = $_POST['query_id'];
                    $admin_reply = $_POST['admin_reply'];

                    // Update the 'queries' table with admin reply
                    $update_query = "UPDATE queries SET admin_reply='$admin_reply' WHERE id='$query_id'";
                    if ($conn->query($update_query) === TRUE) {
                        echo '<p class="success-message">Reply posted successfully.</p>';
                    } else {
                        echo '<p class="error-message">Error posting reply: ' . $conn->error . '</p>';
                    }
                }
                ?>
            </div>
        </div>
    </div>
</body>
</html>
