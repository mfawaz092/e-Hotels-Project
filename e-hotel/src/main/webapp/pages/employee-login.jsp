<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
    <script>
        function validateLogin() {
            var username = document.getElementById("employeeUsername").value;
            var password = document.getElementById("employeePassword").value;

            if (username === "employee" && password === "456") {
                window.location.href = "employee-homepage.jsp";
            } else {
                alert("Wrong credentials. Please try again.");
            }
            return false;
        }
    </script>
</head>
<body>
<div class="container">
    <a href="../index.jsp">Return to home</a>
    <h1>Employee Login</h1>
    <form onsubmit="return validateLogin()">
        <label for="employeeUsername">Username:</label>
        <input type="text" id="employeeUsername" name="employeeUsername" required>

        <label for="employeePassword">Password:</label>
        <input type="password" id="employeePassword" name="employeePassword" required>

        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>