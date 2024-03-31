public class Manager {
    private int managerID;
    private String ssn_sin;
    private String name;
    private String address;

    public Manager(int managerID, String ssn_sin, String name, String address) {
        this.managerID = managerID;
        this.ssn_sin = ssn_sin;
        this.name = name;
        this.address = address;
    }

    public int getManagerID() {
        return managerID;
    }

    public void setManagerID(int managerID) {
        this.managerID = managerID;
    }

    public String getSsn_sin() {
        return ssn_sin;
    }

    public void setSsn_sin(String ssn_sin) {
        this.ssn_sin = ssn_sin;
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
}
