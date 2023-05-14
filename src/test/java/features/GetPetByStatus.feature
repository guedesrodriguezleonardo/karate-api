Feature: Find pet by status

Background:
  * url baseUrl

@available_pets
Scenario: Verify pets with status 'available' are returned
  Given path '/pet/findByStatus'
  And param status = 'available'
  When method GET
  Then status 200
  And match header Content-Type == 'application/json'
  And match each response contains {status: 'available'}
