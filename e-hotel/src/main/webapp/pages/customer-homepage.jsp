<!DOCTYPE html>
<html>
<head>
    <title>Customer Interface</title>
    <script>
        function updateAvailableRooms() {
            // Code to update available rooms based on selected criteria
            // You can use JavaScript to fetch data from a server or manipulate the DOM
        }
    </script>
</head>
<body>
    <h1>Customer Interface</h1>

    <label for="start-date">Start Date:</label>
    <input type="date" id="start-date" onchange="updateAvailableRooms()">

    <label for="end-date">End Date:</label>
    <input type="date" id="end-date" onchange="updateAvailableRooms()">

    <label for="room-capacity">Room Capacity:</label>
    <select id="room-capacity" onchange="updateAvailableRooms()">
        <option value="">Any</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
    </select>

    <label for="area">Area:</label>
    <input type="text" id="area" onchange="updateAvailableRooms()">

    <label for="hotel-chain">Hotel Chain:</label>
    <input type="text" id="hotel-chain" onchange="updateAvailableRooms()">

    <label for="hotel-category">Hotel Category:</label>
    <select id="hotel-category" onchange="updateAvailableRooms()">
        <option value="">Any</option>
        <option value="1">Economy (1-2 stars)</option>
        <option value="2">Standard (3-4 stars)</option>
        <option value="3">Luxury (4 stars)</option>
        <!-- Add more options as needed -->
    </select>

    <label for="total-rooms">Total Rooms:</label>
    <input type="number" id="total-rooms" onchange="updateAvailableRooms()">

    <label for="price">Price:</label>
    <select id="price" onchange="updateAvailableRooms()">
        <option value="">Any</option>
        <option value="600">Under 600</option>
        <option value="300">Under 300</option>
        <option value="200">Under 200</option>
    </select>

    <div id="available-rooms">
        <!-- Display available rooms here based on selected criteria -->
    </div>
</body>
</html>