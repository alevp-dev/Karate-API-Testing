package bookings.updateBooking;

import com.intuit.karate.junit5.Karate;

public class ModifyBookingRunner {

    @Karate.Test
    Karate testModifyBooking() {
        return Karate.run("classpath:bookings/updateBooking/modifyBooking.feature");
    }
}
