Feature: Test delete booking by ID

  Background:
    * url url_booking
    * def token = call read('classpath:bookings/auth/generateToken.feature')
    * header Cookie = 'token=' + token.response.token
    * header Accept = 'application/json'
    * def createBookingResponse = call read('classpath:bookings/createBooking/createBooking.feature@CreateBooking')

    @HappyPath
    Scenario: delete booking by ID succesful
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      When method DELETE
      Then status 201

    Scenario: Delete booking without authentication
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      * header Cookie = ''
      When method DELETE
      Then status 403

    Scenario: Attempt to delete booking using wrong HTTP method
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      When method POST
      Then status 404