package backend;

public class Room {
    private int roomId;
    private int hotelId;
    private int capacity;
    private String area;
    private double price;
    private boolean extendable;
    private String view;

    public Room(int roomId, int hotelId, int capacity, String area, double price, boolean extendable
    , String view) {
        this.roomId = roomId;
        this.hotelId = hotelId;
        this.capacity = capacity;
        this.area = area;
        this.price = price;
        this.extendable = extendable;
        this.view = view;
    }

    public Room() {
        
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setExtendable(boolean extendable) {
        this.extendable = extendable;
    }

    public void setView(String view) {
        this.view = view;
    }

    public boolean isExtendable() {
        return extendable;
    }

    public String getView() {
        return view;
    }
}
