@HelloCat

Feature: Karate hello world

  Scenario: Retrieve a cat
    Given url 'http://localhost:4567/v1/cats/Jacobo'
    When method GET
    Then status 200
    And match response == { id: '#notnull', name: 'Jacobo', age: 9, parentId: 0}

