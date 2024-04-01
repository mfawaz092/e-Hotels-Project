<!DOCTYPE html>
<html>
<head>
    <title>Process Customer Payment</title>
</head>

<body>

    <h1>Process Customer Payment</h1>

    <form action="process-payment.jsp" method="post">

        <label for="customerId">Customer ID:</label>
        <input type="text" id="customerId" name="customerId" required><br>

        <label for="rentingId">Renting ID:</label>
        <input type="text" id="rentingId" name="rentingId" required><br>

        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount" required><br>

        <label for="paymentMethod">Payment Method:</label>
        <select id="paymentMethod" name="paymentMethod" required>
            <option value="creditcard">Credit Card</option>
            <option value="debitcard">Debit Card</option>
            <option value="cash">Cash</option>
        </select><br>

        <input type="submit" value="Process Payment">
    </form>
</body>
</html>