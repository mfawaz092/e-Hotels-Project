package backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
public class BookingController {
    private static final String URL = "jdbc:postgresql://localhost:5432/e-hotels";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "ehotels";

    // Method to search available rooms based on search criteria
    public List<Room> searchAvailableRooms(Date startDate, Date endDate, int capacity, String area,
                                           String hotelChain, String category,
                                           int numberOfRooms, int price) {

        List<Room> availableRooms = new ArrayList<>();
        // right now the only criteria are capacity and price. Not sure how
        // to write the query to also retrieve the dates (start, end) of booking or renting,
        // the area, the hotel chain, the category of the hotel, and the total number
        // of rooms in the hotel.
        String sqlQuery = "SELECT * FROM Room WHERE capacity >= ? AND price <= ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlQuery)) {
            // Set criteria parameters
            statement.setInt(1, capacity);
            statement.setInt(2, price);

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    // Create Room objects and add to the list
                    Room room = new Room();
                    room.setRoomID(resultSet.getInt("room_id"));
                    room.setCapacity(resultSet.getInt("capacity"));
                    room.setPrice(resultSet.getInt("price"));
                    room.setExtendable(resultSet.getBoolean("extendable"));
                    room.setView(resultSet.getString("view"));
                    room.setHotelID(resultSet.getInt("hotel_id"));
                    availableRooms.add(room);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle or log the exception
        }

        return availableRooms;
    }

    // Method to book a room for a customer.
    public boolean bookRoom(Room room, Customer customer, Date checkInDate, Date checkOutDate, Date bookingDate) {
        String sqlInsert = "INSERT INTO Booking (room_id, customer_id, booking_date, check_in_date, check_out_date) " +
                "VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sqlInsert)) {

            // Convert util Dates to sql Dates
            java.sql.Date sqlBookingDate = new java.sql.Date(bookingDate.getTime());
            java.sql.Date sqlCheckInDate = new java.sql.Date(checkInDate.getTime());
            java.sql.Date sqlCheckOutDate = new java.sql.Date(checkOutDate.getTime());

            // Set booking details
            statement.setInt(1, room.getRoomID());
            statement.setInt(2, customer.getCustomerID());
            statement.setDate(3, sqlBookingDate);
            statement.setDate(4, sqlCheckInDate);
            statement.setDate(5, sqlCheckOutDate);

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

