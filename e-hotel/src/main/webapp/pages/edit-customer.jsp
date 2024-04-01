<!DOCTYPE html>
<html>
<head>
    <title>Edit Customer</title>
</head>
    <body>
    <h1>Edit Customer</h1>

    <form action="update-customer.jsp" method="post">
        <input type="hidden" name="customerId" value="${param.customerId}">

        <label for="idType">ID Type:</label>
        <input type="text" id="idType" name="idType" value="${customer.idType}" required><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${customer.name}" required><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="${customer.address}" required><br>

        <input type="submit" value="Update Customer">
    </form>
    </body>
</html>