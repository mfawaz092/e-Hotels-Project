import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to add a new employee
    public boolean addEmployee(Employee employee) {
        String sqlInsert = "INSERT INTO Employee (ssn_sin, name, address, hotel_id) VALUES (?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set employee details
            statement.setString(1, employee.getSsn_sin());
            statement.setString(2, employee.getFullName());
            statement.setString(3, employee.getAddress());
            statement.setInt(4, employee.getHotelID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update employee information
    public boolean updateEmployee(Employee employee) {
        String sqlUpdate = "UPDATE Employee SET name = ?, address = ?, hotel_id = ? WHERE employee_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlUpdate)) {
            // Set new employee details
            statement.setString(1, employee.getFullName());
            statement.setString(2, employee.getAddress());
            statement.setInt(3, employee.getHotelID());
            statement.setInt(4, employee.getEmployeeID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete an employee
    public boolean deleteEmployee(int employeeId) {
        String sqlDelete = "DELETE FROM Employee WHERE employee_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlDelete)) {
            // Set employee ID parameter
            statement.setInt(1, employeeId);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean turnBookingIntoRenting(Booking booking) {
        String sqlUpdate = "ALTER TABLE Booking ADD COLUMN status VARCHAR(50)";
        String sqlInsert = "UPDATE Booking SET status = 'RENTED' WHERE booking_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement alterStatement = connection.prepareStatement(sqlUpdate);
             PreparedStatement updateStatement = connection.prepareStatement(sqlInsert)) {

            // Add status column to Booking table
            alterStatement.executeUpdate();

            // Set booking ID parameter
            updateStatement.setInt(1, booking.getBookingID());

            int rowsAffected = updateStatement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean insertCustomerPayment(Payment payment) {
        String sqlInsert = "INSERT INTO Payment (customer_id, amount, renting_id, payment_method, payment_status) " +
                "VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set payment details
            statement.setInt(1, payment.getCustomerID());
            statement.setDouble(2, payment.getAmount());
            statement.setInt(3, payment.getRentingID());
            statement.setString(4, payment.getPaymentMethod());
            statement.setString(5, payment.getPaymentStatus());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
