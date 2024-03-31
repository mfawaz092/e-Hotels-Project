public class Customer {
    private int customerID;
    private String idType;
    private String fullName;
    private String address;
    private String registrationDate;

    public Customer(int customerID, String idType, String fullName, String address, String registrationDate) {
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

    public String getRegistrationDate() {
        return registrationDate;
    }
}