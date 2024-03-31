import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HotelController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to retrieve all hotels
    public List<Hotel> getAllHotels() {
        List<Hotel> hotels = new ArrayList<>();

        String sqlQuery = "SELECT * FROM Hotel";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlQuery);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotelID(resultSet.getInt("hotel_id"));
                hotel.setName(resultSet.getString("name"));
                hotel.setCategory(resultSet.getString("category"));
                hotel.setAddress(resultSet.getString("address"));
                hotel.setEmail(resultSet.getString("email"));
                hotel.setNumberOfRooms(resultSet.getInt("numberOfRooms"));
                hotel.setStars(resultSet.getInt("stars"));
                hotel.setChainID(resultSet.getInt("chain_id"));
                hotels.add(hotel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hotels;
    }

    // Method to insert a new hotel
    public boolean insertHotel(Hotel hotel) {
        String sqlInsert = "INSERT INTO Hotel (category, name, address, email, numberOfRooms, stars, chain_id) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {
            // Set hotel details
            statement.setString(1, hotel.getCategory());
            statement.setString(2, hotel.getName());
            statement.setString(3, hotel.getAddress());
            statement.setString(4, hotel.getEmail());
            statement.setInt(5, hotel.getNumberOfRooms());
            statement.setInt(6, hotel.getStars());
            statement.setInt(7, hotel.getChainID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to update hotel information
    public boolean updateHotel(Hotel hotel) {
        String sqlUpdate = "UPDATE Hotel SET category = ?, name = ?, address = ?, email = ?, " +
                "numberOfRooms = ?, stars = ?, chain_id = ? WHERE hotel_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlUpdate)) {
            // Set new hotel details
            statement.setString(1, hotel.getCategory());
            statement.setString(2, hotel.getName());
            statement.setString(3, hotel.getAddress());
            statement.setString(4, hotel.getEmail());
            statement.setInt(5, hotel.getNumberOfRooms());
            statement.setInt(6, hotel.getStars());
            statement.setInt(7, hotel.getChainID());
            statement.setInt(8, hotel.getHotelID());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete a hotel
    public boolean deleteHotel(int hotelId) {
        String sqlDelete = "DELETE FROM Hotel WHERE hotel_id = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlDelete)) {
            // Set hotel ID parameter
            statement.setInt(1, hotelId);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
