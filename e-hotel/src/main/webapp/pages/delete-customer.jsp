<!-- e-hotel/src/main/webapp/pages/delete-customer.jsp -->

<!DOCTYPE html>
<html>
<head>
    <title>Delete Customer</title>
</head>
    <body>
    <h1>Delete Customer</h1>

    <p>Are you sure you want to delete the customer with ID: ${param.customerId}?</p>

    <form action="delete-customer.jsp" method="post">
        <input type="hidden" name="customerId" value="${param.customerId}">
        <input type="submit" value="Delete Customer">
    </form>
    </body>
</html>