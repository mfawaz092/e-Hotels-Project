<!DOCTYPE html>
<html>
<head>
    <title>Add Customer</title>
</head>
<body>
    <h1>Add Customer</h1>

        <form action="add-customer.jsp" method="post">
            <label for="idType">ID Type:</label>
            <input type="text" id="idType" name="idType" required><br>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required><br>

            <input type="submit" value="Add Customer">
        </form>
    </body>
</html>