<!DOCTYPE html>
<html>
<head>
    <title>Customer Interface</title>
    <script>
        function updateAvailableRooms() {
            const startDate = document.getElementById("start-date").value;
            const endDate = document.getElementById("end-date").value;
            const capacity = parseInt(document.getElementById("room-capacity").value);
            const area = document.getElementById("area").value;
            const chain = document.getElementById("hotel-chain").value;
            const category = document.getElementById("hotel-category").value;
            const totalRooms = parseInt(document.getElementById("total-rooms").value);
            const priceUnder = parseInt(document.getElementById("price").value);

            // Make an HTTP request to server-side endpoint
            fetch('/getAvailableRooms?startDate=' + startDate + '&endDate=' + endDate + '&capacity='
                + capacity + '&area=' + area + '&minPrice=' + 0 + '&maxPrice=' + priceUnder
                + '&chainId=' + chain + "&category=" + category + '&totalRooms=' + totalRooms)
                .then(response => response.text())  // Treat the response as text
                .then(data => {
                    // Process the response and update UI
                    const availableRoomsDiv = document.getElementById("available-rooms");
                    availableRoomsDiv.innerHTML = data;  // Insert the HTML into the div
                })
                .catch(error => console.error('Error fetching data:', error));
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
        <option value="Economy">Economy (1-2 stars)</option>
        <option value="Standard">Standard (3-4 stars)</option>
        <option value="Luxury">Luxury (4 stars)</option>
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
        No results
    </div>
</body>
</html>