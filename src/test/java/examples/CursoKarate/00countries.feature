Feature: Check returned countries by API
  Background:
    * url 'https://restcountries.com'
    * header Accept = 'application/json'
  Scenario: get list of all countries
    Given path 'v3.1/all'
    When method GET
    Then status 200
    * print response

    Scenario: Retornar Paises con 404
      Given  path 'v3.1/todos'
      When method GET
      Then status 404
      * print response
