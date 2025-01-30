Feature: Test all get bookings

  Background:
    * url url_booking
    * header Accept = 'application/json'
    * def createBookingResponse = call read('classpath:bookings/createBooking/createBooking.feature@HappyPath')

    @HappyPath
      @GetAllBookings
    Scenario: Get All Bookings Successful
      Given path 'booking'
      When method GET
      Then status 200
      And match response[0].bookingid  == '#number'
      And match response[0].bookingid == '#notnull'

    @HappyPath
      @GetBookingById
    Scenario: Get Booking By ID Succesful
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      When method GET
      Then status 200
      And match response == read('classpath:bookings/getBooking/responseBodyGetBooking.json')
      And match response == read('classpath:bookings/getBooking/responseSchemaGetBooking.json')

    Scenario: Get Booking By ID with invalid format
      Given path 'booking/abc123'
      When method GET
      Then status 404