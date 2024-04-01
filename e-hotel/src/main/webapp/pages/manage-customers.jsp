<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Customers</title>
</head>
<body>
<h1>Manage Customers</h1>

<h2>Add Customer</h2>
<form action="add-customer.jsp" method="post">
    <label for="idType">ID Type:</label>
    <input type="text" id="idType" name="idType" required><br>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br>

    <input type="submit" value="Add Customer">
</form>

<h2>Customers</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Registration Date</th>
        <th>Action</th>
        <th>Customer ID</th>
        <th>ID Type</th>

    </tr>
    <%
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/postgres";
            String username = "postgres";
            String password = "";
            Connection con = DriverManager.getConnection(url, username, password);

            String query = "SELECT * FROM Customer";
            PreparedStatement statement = con.prepareStatement(query);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");
                String idType = resultSet.getString("id_type");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String registrationDate = resultSet.getString("registration_date");
    %>
    <tr>
        <td><%= customerId %></td>
        <td><%= idType %></td>
        <td><%= name %></td>
        <td><%= address %></td>
        <td><%= registrationDate %></td>
        <td>
            <a href="edit-customer.jsp?customerId=<%= customerId %>">Edit</a>
            <a href="delete-customer.jsp?customerId=<%= customerId %>">Delete</a>
        </td>
    </tr>
    <%
        }

        resultSet.close();
        statement.close();
        con.close();
    } catch (Exception e) {
    %>
    <tr>
        <!--error-->
        <td colspan="6">Error: <%= e.getMessage() %></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>