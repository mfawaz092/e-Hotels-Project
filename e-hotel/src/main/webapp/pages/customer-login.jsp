<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <script>
        function validateLogin() {
            var username = document.getElementById("customerUsername").value;
            var password = document.getElementById("customerPassword").value;

            // Check if username and password are correct
            if (username === "customer" && password === "123") {
                // Redirect to homepage
                window.location.href = "customer-homepage.jsp"; // Replace "../homepage.html" with the actual URL of your homepage
            } else {
                // Display error message
                alert("Wrong credentials. Please try again.");
            }

            // Prevent form submission
            return false;
        }
    </script>
</head>
<body>
<div class="container">
    <h1>Customer Login</h1>
    <form onsubmit="return validateLogin()">
        <label for="customerUsername">Username:</label>
        <input type="text" id="customerUsername" name="customerUsername" required>

        <label for="customerPassword">Password:</label>
        <input type="password" id="customerPassword" name="customerPassword" required>

        <button type="submit">Login</button>
    </form>
    <p>Don't have an account? <a href="customer-registration.jsp">Create an account</a></p>
</div>
</body>
</html>
