import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class RentingController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to create a new renting record
    public boolean createRenting(int bookingId, int customerId, Date rentingDate) {
        String sqlInsert = "INSERT INTO Renting (booking_id, customer_id, renting_date) VALUES (?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set renting details
            statement.setInt(1, bookingId);
            statement.setInt(2, customerId);
            statement.setDate(3, new java.sql.Date(rentingDate.getTime()));

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
