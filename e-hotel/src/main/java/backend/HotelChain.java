package backend;

public class HotelChain {
    private int chainID;
    private String name;
    private String address;
    private int numberOfHotels;
    private String email;
    private String phone;
    public HotelChain(int chainID, String name, String address, int numberOfHotels, String email, String phone) {
        this.chainID = chainID;
        this.name = name;
        this.address = address;
        this.numberOfHotels = numberOfHotels;
        this.email = email;
        this.phone = phone;
    }

    public int getChainID() {
        return chainID;
    }

    public void setChainID(int chainID) {
        this.chainID = chainID;
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

    public int getNumberOfHotels() {
        return numberOfHotels;
    }

    public void setNumberOfHotels(int numberOfHotels) {
        this.numberOfHotels = numberOfHotels;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
