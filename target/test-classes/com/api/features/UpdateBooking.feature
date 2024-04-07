Feature: Update Booking Details

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * cookie token = 'abc123'  // Replace 'abc123' with the actual token value

  Scenario: Update booking details
    Given path '/booking/1'  // Replace '1' with the actual booking ID you want to update
    And request 
    """
    {
      "firstname": "James",
      "lastname": "Brown",
      "totalprice": 111,
      "depositpaid": true,
      "bookingdates": {
        "checkin": "2018-01-01",
        "checkout": "2019-01-01"
      },
      "additionalneeds": "Breakfast"
    }
    """
    When method PUT
    Then status 200
