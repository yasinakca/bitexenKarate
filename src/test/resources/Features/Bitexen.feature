Feature: BitexenApiTesting
  
  Background: 
    * url 'https://petstore.swagger.io'

  Scenario: Get request
    Given path '/v2/store/inventory'
    When method GET
    Then status 200
    * def result = responseStatus == 200 ? 'Success' : 'Unsuccess'
    And match result == 'Success'
    
    
  Scenario: Post request
    * def requestBody = read('../Json/body.json')
    Given path '/v2/store/order'
    And request requestBody
    When method POST
    Then status 200
    * def result = responseStatus == 200 ? 'Success' : 'Unsuccess'
    And match result == 'Success'