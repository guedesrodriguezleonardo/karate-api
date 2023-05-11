Feature: Get user by username

Background:
    * url baseUrl

@get_user
Scenario: Get user with valid username
  Given path '/user/testuser1'
  When method get
  Then status 200
  And match response.username == 'testuser1'
