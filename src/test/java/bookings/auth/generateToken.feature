Feature: Generate a valid token

  Background:
    * url url_booking

    @CreateToken
    Scenario: Generate token succesful
      Given path 'auth'
      And request
      """
      {
        "username": "admin",
        "password": "password123"
      }
      """
      When method POST
      Then status 200
      And match response ==  {"token": "#string"}
