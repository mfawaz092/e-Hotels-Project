<!DOCTYPE html>
<html>
<head>
    <title>Manage Hotels</title>
</head>
<body>
<h1>Manage Hotels</h1>

<h2>Add Hotel</h2>
<form action="add-hotel.jsp" method="post">
    <label for="chainId">Chain ID:</label>
    <input type="text" id="chainId" name="chainId" required><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="category">Category:</label>
    <input type="text" id="category" name="category" required><br>

    <label for="totalRooms">Total Rooms:</label>
    <input type="text" id="totalRooms" name="totalRooms" required><br>

    <input type="submit" value="Add Hotel">
</form>

<h2>Hotels</h2>
<table>
    <tr>
        <th>Category</th>
        <th>Total Rooms</th>
        <th>Action</th>
        <th>Hotel ID</th>
        <th>Chain ID</th>
        <th>Name</th>

    </tr>


    <c:forEach var="hotel" items="${hotels}">
        <tr>
            <td>${hotel.hotelId}</td>
            <td>${hotel.chainId}</td>
            <td>${hotel.name}</td>
            <td>${hotel.category}</td>
            <td>${hotel.totalRooms}</td>
            <td>
                <a href="edit-hotel.jsp?hotelId=${hotel.hotelId}">Edit</a>
                <a href="delete-hotel.jsp?hotelId=${hotel.hotelId}">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>