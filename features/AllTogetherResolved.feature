@AllTogether
Feature: We will write a feature that asking to http://localhost:4567/v1/cats/master endpoint, do some assertions over the response.

Background: I will store here the endpoint
  * def myEndpoint = 'http://localhost:4567/v1/cats/master'

Scenario: Assert that the name the cat is 'Miyagi'
    Given url myEndpoint
    When method GET
    Then status 200
    And	assert response.name == 'Miyagi'

Scenario: Assert that Tigerino and Purizon are the favouriteFoods of my cat
    Given url myEndpoint
    When method GET
    Then status 200
    And match response.favouriteFoods == ['Cosma', 'Tigerino', 'Purizon']
