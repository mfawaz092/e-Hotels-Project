<!DOCTYPE html>
<html>
<head>
    <title>Manage Employees</title>
</head>
<body>
<h1>Manage Employees</h1>

<h2>Add Employee</h2>
<form action="add-employee.jsp" method="post">
    <label for="ssnSin">SSN or SIN:</label>
    <input type="text" id="ssnSin" name="ssnSin" required><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br>

    <label for="hotelId">Hotel ID:</label>
    <input type="text" id="hotelId" name="hotelId" required><br>

    <input type="submit" value="Add Employee">
</form>

<h2>Employees</h2>
<table>
    <tr>
        <th>Address</th>
        <th>Hotel ID</th>
        <th>Action</th>
        <th>Employee ID</th>
        <th>SSN/SIN</th>
        <th>Name</th>

    </tr>

    <c:forEach var="employee" items="${employees}">
        <tr>

            <td>${employee.employeeId}</td>
            <td>${employee.ssnSin}</td>
            <td>${employee.name}</td>
            <td>${employee.address}</td>
            <td>${employee.hotelId}</td>
            <td>
                <a href="edit-employee.jsp?employeeId=${employee.employeeId}">Edit</a>
                <a href="delete-employee.jsp?employeeId=${employee.employeeId}">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>