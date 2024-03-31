package backend;

import java.util.Date;

public class Customer {
    private int customerId;
    private String idType;
    private String name;
    private String address;
    private Date registrationDate;

    public Customer(int customerId, String idType, String name, String address, Date registrationDate) {
        this.customerId = customerId;
        this.idType = idType;
        this.name = name;
        this.address = address;
        this.registrationDate = registrationDate;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
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

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }
}


