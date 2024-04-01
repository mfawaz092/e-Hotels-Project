<!DOCTYPE html>
<html>
<head>
    <title>View Room Capacity per Hotel</title>
</head>
<body>
<h1>View Room Capacity per Hotel</h1>

    <table>
        <tr>
            <th>Hotel ID</th>
            <th>Hotel Name</th>
            <th>Total Capacity</th>
        </tr>


        <c:forEach var="roomCapa" items="${roomCapacities}">
            <tr>
                <td>${roomCapacity.totalCapacity}</td>
                <td>${roomCapacity.hotelId}</td>
                <td>${roomCapacity.hotelName}</td>

            </tr>
        </c:forEach>

    </table>

    </body>
</html>