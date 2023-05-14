Feature: Find pet by Id

Background:
    * url baseUrl  

@get_pet
Scenario: Find pet by id
  Given path '/pet/30'
  When method GET
  Then status 200
  And match response contains {id: 30, category: {id: 2, name: 'Cat'}, name: 'Lemon', status: 'available'}
  And match header Content-Type == 'application/json'
