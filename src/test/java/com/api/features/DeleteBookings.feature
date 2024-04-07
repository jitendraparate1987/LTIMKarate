Feature: Delete Booking

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'
    

  Scenario: Delete booking by ID
    Given path '/booking/1'  
    When method DELETE
    Then status 200
