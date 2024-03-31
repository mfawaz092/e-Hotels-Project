package backend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RoomService {

    public List<Room> getAvailableRooms(Date startDate, Date endDate, int capacity,
                                        String area, double minPrice, double maxPrice,
                                        int chainId, String category, int totalRooms) {

        List<Room> availableRooms = new ArrayList<>();

        try {

            ConnectionDB connectionDB = new ConnectionDB();
            Connection con = connectionDB.getConnection();

            String query = "SELECT DISTINCT r.* FROM Room r " +
                    "INNER JOIN Hotel h ON r.hotel_id = h.hotel_id " +
                    "INNER JOIN HotelChain hc ON h.chain_id = hc.chain_id " +
                    "LEFT JOIN Booking b ON r.room_id = b.room_id AND ((? <= b.check_in_date AND ? >= b.check_in_date) OR (? <= b.check_out_date AND ? >= b.check_out_date)) " +
                    "WHERE r.capacity >= ? AND r.price BETWEEN ? AND ? AND hc.chain_id = ? AND h.category = ? AND h.numberOfRooms = ? " +
                    "AND b.booking_id IS NULL";

            PreparedStatement statement = con.prepareStatement(query);
            statement.setDate(1, (java.sql.Date) startDate);
            statement.setDate(2, (java.sql.Date) endDate);
            statement.setDate(3, (java.sql.Date) startDate);
            statement.setDate(4, (java.sql.Date) endDate);
            statement.setInt(5, capacity);
            statement.setDouble(6, minPrice);
            statement.setDouble(7, maxPrice);
            statement.setInt(8, chainId);
            statement.setString(9, category);
            statement.setInt(10, totalRooms);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Room room = new Room();
                room.setRoomId(resultSet.getInt("room_id"));
                room.setPrice(resultSet.getDouble("price"));
                room.setCapacity(resultSet.getInt("capacity"));
                room.setExtendable(resultSet.getBoolean("extendable"));
                room.setView(resultSet.getString("view"));
                room.setHotelId(resultSet.getInt("hotel_id"));
                availableRooms.add(room);
            }

            resultSet.close();
            statement.close();
            connectionDB.close();

        } catch (Exception e) {
            System.out.println("Error getting available rooms");
        }
        return availableRooms;
    }
}