<!DOCTYPE html>
<html>
<head>
    <title>View Bookings</title>
</head>

<body>
    <h1>View Bookings</h1>

    <table>
        <tr>
            <th>Booking ID</th>
            <th>Booking Date</th>
            <th>Check-in Date</th>
            <th>Check-out Date</th>
            <th>Customer ID</th>
            <th>Room ID</th>
        </tr>

        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.customerId}</td>
                <td>${booking.roomId}</td>
                <td>${booking.bookingId}</td>
                <td>${booking.bookingDate}</td>
                <td>${booking.checkInDate}</td>
                <td>${booking.checkOutDate}</td>


            </tr>
        </c:forEach>

    </table>
</body>
</html>