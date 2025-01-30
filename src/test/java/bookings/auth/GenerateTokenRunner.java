package bookings.auth;

import com.intuit.karate.junit5.Karate;

public class GenerateTokenRunner {

    @Karate.Test
    Karate testGenerateToken() {
        return Karate.run("classpath:bookings/auth/generateToken.feature");
    }
}
