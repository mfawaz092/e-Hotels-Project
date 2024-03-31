package backend;

public class Hotel {
    private int hotelID;
    private String category;
    private String name;
    private String address;
    private String email;
    private String phone;
    private int numberOfRooms;
    private int stars;
    private int chainID;

    public Hotel() {

    }

    public Hotel(int hotelID, String category, String name, String address, String email, String phone, int numberOfRooms, int stars, int chainID) {
        this.hotelID = hotelID;
        this.category = category;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.numberOfRooms = numberOfRooms;
        this.stars = stars;
        this.chainID = chainID;
    }

    public int getHotelID() {
        return hotelID;
    }

    public void setHotelID(int hotelID) {
        this.hotelID = hotelID;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumberOfRooms() {
        return numberOfRooms;
    }

    public void setNumberOfRooms(int numberOfRooms) {
        this.numberOfRooms = numberOfRooms;
    }

    public int getStars() {
        return stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public int getChainID() {
        return chainID;
    }

    public void setChainID(int chainID) {
        this.chainID = chainID;
    }
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
