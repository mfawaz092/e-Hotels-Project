<!DOCTYPE html>
<html>
<head>
    <title>Create Direct Renting</title>
</head>

<body>
    <h1>Create Direct Renting</h1>

    <form action="depre/e-hotel/src/main/webapp/pages/create-renting.jsp" method="post">
        <label for="customerId">Customer ID:</label>
        <input type="text" id="customerId" name="customerId" required><br>

        <label for="roomId">Room ID:</label>
        <input type="text" id="roomId" name="roomId" required><br>

        <label for="rentingDate">Renting Date:</label>
        <input type="date" id="rentingDate" name="rentingDate" required><br>

        <input type="submit" value="Create Renting">
    </form>
</body>

</html>