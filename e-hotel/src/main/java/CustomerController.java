import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to insert a new customer
    public boolean insertCustomer(Customer customer) {
        String sqlInsert = "INSERT INTO Customer (id_type, name, address, registration_date) VALUES (?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set customer details
            statement.setString(1, customer.getIdType());
            statement.setString(2, customer.getFullName());
            statement.setString(3, customer.getAddress());
            statement.setDate(4, new java.sql.Date(customer.getRegistrationDate().getTime()));

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update customer information
    public boolean updateCustomer(Customer customer) {
        String sqlUpdate = "UPDATE Customer SET id_type = ?, name = ?, address = ? WHERE customer_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlUpdate)) {
            // Set new customer details
            statement.setString(1, customer.getIdType());
            statement.setString(2, customer.getFullName());
            statement.setString(3, customer.getAddress());
            statement.setInt(4, customer.getCustomerID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete a customer
    public boolean deleteCustomer(int customerId) {
        String sqlDelete = "DELETE FROM Customer WHERE customer_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlDelete)) {
            // Set customer ID parameter
            statement.setInt(1, customerId);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
