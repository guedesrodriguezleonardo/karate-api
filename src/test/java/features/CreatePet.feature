Feature: Create a new pet

  Background:
  * url baseUrl

  @create_pet
  Scenario: Create a new pet
    * def pet =
      """
      {
        "id": 30,
        "category": {
          "id": 2,
          "name": "Cat"
        },
        "name": "Lemon",
        "photoUrls": [
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Cat.png/766px-Cat.png"
        ],
        "tags": [
          {
            "id": 9,
            "name": "cute"
          }
        ],
        "status": "available"
      }
      """

    Given path '/pet'
    And request pet
    When method post
    Then status 200
