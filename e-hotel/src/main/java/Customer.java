import java.util.Date;

public class Customer {
    private int customerID;
    private String idType;
    private String fullName;
    private String address;
    private Date registrationDate;

    public Customer(int customerID, String idType, String fullName, String address, Date registrationDate) {
        this.customerID = customerID;
        this.idType = idType;
        this.fullName = fullName;
        this.address = address;
        this.registrationDate = registrationDate;
    }

    //getters
    public int getCustomerID() {
        return customerID;
    }

    public String getIdType() {
        return idType;
    }

    public String getFullName() {
        return fullName;
    }

    public String getAddress() {
        return address;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    //setters
    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }
}