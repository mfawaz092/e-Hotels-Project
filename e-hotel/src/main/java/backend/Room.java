package backend;

public class Room {
    private int roomID;
    private int price;
    private int capacity;
    private boolean extendable;
    private String view;
    private int hotelID;

    public Room(int roomID, int price, int capacity, boolean extendable, String view, int hotelID) {
        this.roomID = roomID;
        this.price = price;
        this.capacity = capacity;
        this.extendable = extendable;
        this.view = view;
        this.hotelID = hotelID;
    }

    public Room() {

    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public boolean isExtendable() {
        return extendable;
    }

    public void setExtendable(boolean extendable) {
        this.extendable = extendable;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    public int getHotelID() {
        return hotelID;
    }

    public void setHotelID(int hotelID) {
        this.hotelID = hotelID;
    }
}
