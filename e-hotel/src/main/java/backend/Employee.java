package backend;

public class Employee {
    private int employeeId;
    private String ssnSin;
    private String name;
    private String address;
    private int hotelId;

    public Employee(int employeeId, String ssnSin, String name, String address, int hotelId) {
        this.employeeId = employeeId;
        this.ssnSin = ssnSin;
        this.name = name;
        this.address = address;
        this.hotelId = hotelId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getSsnSin() {
        return ssnSin;
    }

    public void setSsnSin(String ssnSin) {
        this.ssnSin = ssnSin;
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

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }
}
