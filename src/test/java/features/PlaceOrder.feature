Feature: Place an Order

Background:
  * url baseUrl

@place_order
Scenario: Place an Order
  Given path '/store/order'
  And request
    """
    {
      "id": 78,
      "petId": 30,
      "quantity": 1,
      "shipDate": "2023-05-04T23:57:02.633Z",
      "status": "placed",
      "complete": true
    }
    """
  When method POST
  Then status 200
  And match response.status == 'placed'