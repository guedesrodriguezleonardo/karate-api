Feature: User Login

Background:
  * url baseUrl

@login
Scenario: Valid User Login
  Given path '/user/login'
  And param username = 'testuser1'
  And param password = 'Password123'
  When method get
  Then status 200
  And match response == { code: 200, type: 'unknown', message: '#string' }
  And match response.message contains 'logged in user session:'
