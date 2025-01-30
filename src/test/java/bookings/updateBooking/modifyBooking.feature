Feature: Test for modify booking by ID

  Background:
    * url url_booking
    * def token = call read('classpath:bookings/auth/generateToken.feature')
    * print 'Generated token: ', token
    * header Cookie = 'token=' + token.response.token
    * header Accept = 'application/json'
    * def createBookingResponse = call read('classpath:bookings/createBooking/createBooking.feature@CreateBooking')
    * def requestBodyUpdate = read('classpath:bookings/updateBooking/requestBodyUpdate.json')
    * def responseSchemaBodyUpdate = read('classpath:bookings/updateBooking/responseSchemaBodyUpdate.json')

    @HappyPath
    Scenario: Modify Booking by ID Succesful
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      And request requestBodyUpdate
      When method PUT
      Then status 200
      And match response == requestBodyUpdate
      And match response == responseSchemaBodyUpdate

    Scenario: Modify Booking with Partial Data
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      And request {"firstname": "Tomás", "lastname": "Pérez"}
      When method PATCH
      Then status 200
      And match response.firstname == "Tomás"
      And match response.lastname == "Pérez"

    Scenario: Modify Booking without Authentication
      Given def bookingId = createBookingResponse.response.bookingid
      And path 'booking/' + bookingId
      * header Cookie = ''
      And request requestBodyUpdate
      When method PUT
      Then status 403