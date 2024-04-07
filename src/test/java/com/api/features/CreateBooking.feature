Feature: Create Booking

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'

  Scenario: Create a new booking
    Given path '/booking'
    And request 
    """
    {
      "firstname" : "Jim",
      "lastname" : "Brown",
      "totalprice" : 111,
      "depositpaid" : true,
      "bookingdates" : {
          "checkin" : "2018-01-01",
          "checkout" : "2019-01-01"
      },
      "additionalneeds" : "Breakfast"
    }
    """
    When method POST
    Then status 200
   
