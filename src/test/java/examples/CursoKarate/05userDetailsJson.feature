#Lectura de JSONs para pruebas
@test001
Feature: Check returned users by API

  Background:
    * url 'https://reqres.in/'
    * header Accept = 'application/json'
    * def expectedOutput = read('../Data/result.json')
    * def expectedArrayOutput = read('../Data/resultArray.json')

  Scenario: Call get test user with id 2
    Given path 'api/users/2'
    When method GET
    Then status 200
    And match response == expectedOutput
    * print response

  Scenario: Call get test array with json
    Given path 'api/users/2'
    When method GET
    Then status 200
    And match response == expectedArrayOutput[0]
    * print response

  Scenario: Call get test array with json
    Given path 'api/users/3'
    When method GET
    Then status 200
    And match response == expectedArrayOutput[1]
    * print response

#   el scenario 3 falla por que La posición en el array no existe ya que en el json no esta considerado