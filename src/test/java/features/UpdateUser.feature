Feature: Update User

Background:
  * url baseUrl

@update_user
Scenario: Update User
  Given path '/user/testuser1'
  And request
    """
    {
      "id": 1,
      "username": "testuser1",
      "firstName": "newname",
      "lastName": "newlastname",
      "email": "testuser1@email.com",
      "password": "Ab11234567-",
      "phone": "123456789",
      "userStatus": 0
    }
    """
  When method PUT
  Then status 200
  
  Given path '/user/testuser1'
  When method GET
  Then status 200
  And match response contains { "id": 1, "username": "testuser1", "firstName": "newname", "lastName": "newlastname" }
