package backend;

public class HotelChain {
    private int chainId;
    private String name;

    public HotelChain(int chainId, String name) {
        this.chainId = chainId;
        this.name = name;
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
}

