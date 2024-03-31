package backend;

public class Hotel {
    private int hotelId;
    private int chainId;
    private String name;
    private String category;
    private int totalRooms;

    public Hotel(int hotelId, int chainId, String name, String category, int totalRooms) {
        this.hotelId = hotelId;
        this.chainId = chainId;
        this.name = name;
        this.category = category;
        this.totalRooms = totalRooms;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getChainId() {
        return chainId;
    }

    public void setChainId(int chainId) {
        this.chainId = chainId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getTotalRooms() {
        return totalRooms;
    }

    public void setTotalRooms(int totalRooms) {
        this.totalRooms = totalRooms;
    }
}

