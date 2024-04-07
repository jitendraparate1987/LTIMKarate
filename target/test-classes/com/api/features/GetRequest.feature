Feature: Test API

Scenario: Test Get Request API
Given url 'https://restful-booker.herokuapp.com/booking'
When method get
Then status 200


    