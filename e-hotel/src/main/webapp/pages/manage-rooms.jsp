<!DOCTYPE html>
<html>
<head>
    <title>Manage Rooms</title>
</head>
<body>
<h1>Manage Rooms</h1>

<h2>Add Room</h2>
<form action="add-room.jsp" method="post">
    <label for="hotelId">Hotel ID:</label>
    <input type="text" id="hotelId" name="hotelId" required><br>

    <label for="capacity">Capacity:</label>
    <input type="text" id="capacity" name="capacity" required><br>

    <label for="area">Area:</label>
    <input type="text" id="area" name="area" required><br>

    <label for="price">Price:</label>
    <input type="text" id="price" name="price" required><br>

    <label for="extendable">Extendable:</label>
    <input type="checkbox" id="extendable" name="extendable"><br>

    <label for="view">View:</label>
    <input type="text" id="view" name="view" required><br>

    <input type="submit" value="Add Room">
</form>

<h2>Rooms</h2>
<table>
    <tr>
        <th>Price</th>
        <th>Extendable</th>
        <th>View</th>
        <th>Room ID</th>
        <th>Hotel ID</th>
        <th>Capacity</th>
        <th>Area</th>

        <th>Action</th>
    </tr>

    <c:forEach var="rm" items="${rooms}">
        <tr>
            <td>${rm.roomId}</td>
            <td>${rm.hotelId}</td>
            <td>${rm.capacity}</td>
            <td>${rm.area}</td>
            <td>${rm.price}</td>
            <td>${rm.extendable}</td>
            <td>${rm.view}</td>
            <td>
                <a href="edit-room.jsp?roomId=${rm.roomId}">Edit</a>
                <a href="delete-room.jsp?roomId=${rm.roomId}">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>