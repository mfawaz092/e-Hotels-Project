<!DOCTYPE html>
<html>
<head>
    <title>View Available Rooms per Area</title>
</head>

<body>
    <h1>View Available Rooms per Area</h1>

    <table>
        <tr>
            <th>Area</th>
            <th>Available Rooms</th>
        </tr>


        <c:forEach var="availRoom" items="${availableRooms}">
            <tr>
                <td>${availRoom.area}</td>
                <td>${availRoom.availableRooms}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>