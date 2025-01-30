package bookings.createBooking;

import com.intuit.karate.junit5.Karate;

public class CreateBookingRunner {

    @Karate.Test
    Karate testCreateBooking() {
        return Karate.run("classpath:bookings/createBooking/createBooking.feature");
    }
}
