Feature: Get Booking Details

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * configure headers = { Accept: 'application/json' }

  Scenario: Get booking details by ID
    Given path '/booking/1'  
    When method GET
    Then status 200
    
