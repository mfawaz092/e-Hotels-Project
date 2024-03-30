<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
</head>
<body>
<div class="container">
    <a href="../index.jsp">Return to home</a>
    <h1>Employee Login</h1>
    <form action="/EmployeeLogin" method="post">
        <label for="employeeUsername">Username:</label>
        <input type="text" id="employeeUsername" name="employeeUsername" required>

        <label for="employeePassword">Password:</label>
        <input type="password" id="employeePassword" name="employeePassword" required>

        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>