Feature: User Logout

Background:
  * url baseUrl

@logout
Scenario: User Logout
  Given path '/user/logout'
  When method GET
  Then status 200
  And match response contains { "message": "ok" }
