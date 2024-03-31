public class Employee {
    private int employeeID;
    private String ssn_sin;
    private String fullName;
    private String address;
    private String hotelID;

    public Employee(int employeeID, String ssn_sin, String fullName, String address, String hotelID) {
        this.employeeID = employeeID;
        this.ssn_sin = ssn_sin;
        this.fullName = fullName;
        this.address = address;
        this.hotelID = hotelID;
    }

    //getters
    public int getEmployeeID() {
        return employeeID;
    }

    public String getSsn_sin() {
        return ssn_sin;
    }

    public String getFullName() {
        return fullName;
    }

    public String getAddress() {
        return address;
    }

    public String getHotelID() {
        return hotelID;
    }

    //setters
    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public void setSsn_sin(String ssn_sin) {
        this.ssn_sin = ssn_sin;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setHotelID(String hotelID) {
        this.hotelID = hotelID;
    }
}