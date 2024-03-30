<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
</head>
<body>
<div class="container">
    <a href="../index.jsp">Return to home</a>
    <h1>Customer Login</h1>
    <form action="../CustomerLogin" method="post">
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
