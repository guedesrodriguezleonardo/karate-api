Feature: Create a new user

  Background:
  * url baseUrl

  @create_user
  Scenario: Create a new user
    * def user =
      """
      [ 
        {
          "id": 13,
          "username": "testuser1",
          "firstName": "Test",
          "lastName": "User",
          "email": "testuser1@email.com",
          "password": "Password123",
          "phone": "123456789",
          "userStatus": 0
        }
      ]
      """

    Given path '/user/createWithList'
    And request user
    When method post
    Then status 200
