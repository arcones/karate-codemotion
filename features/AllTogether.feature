@AllTogether
Feature: We will write a feature that asking to http://localhost:4567/v1/cats/master endpoint, do some assertions over the response.

Background: I will store here the endpoint
  * url 'http://localhost:4567/v1/cats'

Scenario: Assert that the name of the cat is 'Miyagi'
  Given path 'master'
  When method GET
  Then assert response.name == 'Miyagi'

Scenario: Assert that Cosma, Tigerino and Purizon are the favouriteFoods of my cat
  Given path 'master'
  When method GET
  Then match response.favouriteFoods == ['Cosma', 'Tigerino', 'Purizon']