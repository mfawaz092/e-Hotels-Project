package backend;

public class Renting {
    private int rentingID;
    private String rentingDate;
    private int bookingID;
    private int customerID;

    public Renting(int rentingID, String rentingDate, int bookingID, int customerID) {
        this.rentingID = rentingID;
        this.rentingDate = rentingDate;
        this.bookingID = bookingID;
        this.customerID = customerID;
    }

    public int getRentingID() {
        return rentingID;
    }

    public void setRentingID(int rentingID) {
        this.rentingID = rentingID;
    }

    public String getRentingDate() {
        return rentingDate;
    }

    public void setRentingDate(String rentingDate) {
        this.rentingDate = rentingDate;
    }

    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }
}
