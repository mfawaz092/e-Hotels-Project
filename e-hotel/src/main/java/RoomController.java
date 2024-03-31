import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to insert a new room
    public boolean insertRoom(Room room) {
        String sqlInsert = "INSERT INTO Room (price, capacity, extendable, view, hotel_id) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set room details
            statement.setInt(1, room.getPrice());
            statement.setInt(2, room.getCapacity());
            statement.setBoolean(3, room.isExtendable());
            statement.setString(4, room.getView());
            statement.setInt(5, room.getHotelID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update room information
    public boolean updateRoom(Room room) {
        String sqlUpdate = "UPDATE Room SET price = ?, capacity = ?, extendable = ?, view = ?, hotel_id = ? WHERE room_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlUpdate)) {
            // Set new room details
            statement.setInt(1, room.getPrice());
            statement.setInt(2, room.getCapacity());
            statement.setBoolean(3, room.isExtendable());
            statement.setString(4, room.getView());
            statement.setInt(5, room.getHotelID());
            statement.setInt(6, room.getRoomID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete a room
    public boolean deleteRoom(int roomId) {
        String sqlDelete = "DELETE FROM Room WHERE room_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlDelete)) {
            // Set room ID parameter
            statement.setInt(1, roomId);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
