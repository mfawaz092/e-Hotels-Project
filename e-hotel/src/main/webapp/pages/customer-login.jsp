<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
</head>
<body>
<div class="container">
    <a href="../index.jsp">Return to home</a>
    <h1>Customer Login</h1>
    <form action="/Login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Login</button>
    </form>
    <p>Don't have an account? <a href="customer-registration.jsp">Create an account</a></p>
</div>
</body>
</html>
