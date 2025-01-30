Feature: Tests for create bookings

  Background:
    * url url_booking
    * header Accept = 'application/json'

    @HappyPath
      @CreateBooking
    Scenario Outline: Create Booking Succesful Outline Scenario
      Given path 'booking'
      And def requestBodyJson = read('classpath:bookings/createBooking/requestBodyCreateBooking.json')
      And requestBodyJson.firstname = <firstname>
      And requestBodyJson.lastname = <lastname>
      And requestBodyJson.totalprice = <totalprice>
      And requestBodyJson.depositpaid = <depositpaid>
      And requestBodyJson.bookingdates.checkin = <checkin>
      And requestBodyJson.bookingdates.checkout = <checkout>
      And requestBodyJson.additionalneeds = <additionalneeds>
      And request requestBodyJson
      When method POST
      Then status 200
      And match response == read('classpath:bookings/createBooking//responseSchemaBodyBooking.json')

      Examples:
        | firstname | lastname | totalprice | depositpaid | checkin      | checkout     | additionalneeds |
        | "Andrés"  | "Torres" | 300        | true        | "2025-01-01" | "2025-01-06" | "Dinner"        |
        | "María"   | "Gómez"  | 450        | true        | "2025-02-10" | "2025-02-15" | "Breakfast"     |
        | "Betty"   | "Villa"  | 600        | true        | "2025-02-18" | "2025-02-28" | "Breakfast"     |

    Scenario: Create Booking with BodyRequest Incorrect
      Given path 'booking'
      And request
        """
        {
          "firtname":123,
          "totalPrice":"123"
        }
        """
      When method POST
      Then status 500
      And match response == "Internal Server Error"

    Scenario: Create incorrect data or null in request and get response successfully
      Given path 'booking'
      And def requestBodyJson = read('classpath:bookings/createBooking//requestBodyCreateBooking.json')
      And request requestBodyJson
      When method POST
      Then status 200