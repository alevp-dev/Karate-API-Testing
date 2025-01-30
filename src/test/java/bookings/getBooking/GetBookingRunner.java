package bookings.getBooking;

import com.intuit.karate.junit5.Karate;

public class GetBookingRunner {

    @Karate.Test
    Karate testGetAllBookings() {
        return Karate.run("classpath:bookings/getBooking/getBooking.feature");
    }
}
