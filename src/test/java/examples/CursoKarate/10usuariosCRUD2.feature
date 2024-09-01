Feature: product endpoint

  Background:
    * url 'http://localhost:8080'

  Scenario: CRUD usuarios
    Given path '/usuarios'
    And request {identificador: "A00000000",nombre:"Fer", edad:23}
    When method POST
    Then status 200
    And match response == {identificador:'#string', nombre:"Fer", edad:"#number"}

    * def identificador = response.identificador

# get by id
    Given path '/usuarios', identificador
    When method GET
    Then status 200
    And match response contains {identificador: '#(identificador)', nombre: "#string"}

# update
    Given path '/usuarios', identificador
    And request {identificador: '#(identificador)', nombre:"Rachel", edad:0}
    When method PUT
    Then status 200
    And match response contains {identificador: '#(identificador)', nombre: "Rachel"}

# list
    Given path '/usuarios'
    When method GET
    Then status 200
    And print "---- LISTA DE USUARIOS ----"
    And print response

# delete with id
    Given path '/usuarios', identificador
    When method DELETE
    Then status 200

# delete with body
    Given path '/usuarios'
    And request {identificador: '#(identificador)', nombre:"Rachel", edad:0}
    When method DELETE
    Then status 500

# list
    Given path '/usuarios'
    When method GET
    Then status 200
    And print "---- LISTA DE USUARIOS ----"
    And print response