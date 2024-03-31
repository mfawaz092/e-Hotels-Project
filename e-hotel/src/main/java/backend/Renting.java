package backend;

import java.util.Date;

public class Renting {
    private int rentingId;
    private Date rentingDate;
    private int bookingId;
    private int customerId;

    public Renting(int rentingId, Date rentingDate, int bookingId, int customerId) {
        this.rentingId = rentingId;
        this.rentingDate = rentingDate;
        this.bookingId = bookingId;
        this.customerId = customerId;
    }

    public int getRentingId() {
        return rentingId;
    }

    public void setRentingId(int rentingId) {
        this.rentingId = rentingId;
    }

    public Date getRentingDate() {
        return rentingDate;
    }

    public void setRentingDate(Date rentingDate) {
        this.rentingDate = rentingDate;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
}

