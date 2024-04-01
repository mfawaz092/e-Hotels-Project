<!DOCTYPE html>
<html>
<head>
    <title>Employee Homepage</title>
</head>

<body>
    <h1>Welcome to the Employee Homepage</h1>

    <h2>Manage Information</h2>
    <ul>
        <button onclick="location.href='manage-customers.jsp'">Manage Customers</button>
        <button onclick="location.href='manage-employees.jsp'">Manage Employees</button>
        <button onclick="location.href='manage-hotels.jsp'">Manage Hotels</button>
        <button onclick="location.href='manage-rooms.jsp'">Manage Rooms</button>
    </ul>

    <h2>Booking and Renting</h2>
    <ul>
        <button onclick="location.href='view-bookings.jsp'">View Bookings</button>
        <button onclick="location.href='convert-booking-to-renting.jsp'">Convert Booking to Renting</button>
        <button onclick="location.href='create-renting.jsp'">Create Direct Renting</button>
    </ul>

    <h2>Payments</h2>
    <ul>
        <button onclick="location.href='process-payment.jsp'">Process Customer Payment</button>
    </ul>

    <h2>SQL Views</h2>
    <ul>
        <button onclick="location.href='view-available-rooms.jsp'">View Available Rooms per Area</button>
        <button onclick="location.href='view-room-capacity.jsp'">View Room Capacity per Hotel</button>
    </ul>
</body>
</html>