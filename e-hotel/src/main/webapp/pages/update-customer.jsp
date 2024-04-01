<!DOCTYPE html>
<html>
<head>
    <title>Update Customer</title>
</head>
    <body>
    <h1>Update Customer</h1>

    <form action="update-customer.jsp" method="post">
        <input type="hidden" name="customerId" value="${param.customerId}">

        <label for="idType">ID Type:</label>
        <input type="text" id="idType" name="idType" value="${param.idType}" required><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${param.name}" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="${param.address}" required><br>

        <input type="submit" value="Update Customer">
    </form>
    </body>
</html>