#Diferentes ejemplos de match

Feature: Check Not Equals

  Scenario: Definición no es igual a objeto

    * def expected = { nombre: 'Silvia'}
    * def test = { nombre: 'Silvia'}

    * match test != { nombre: 'Silvia'}
    * match test != null
    * match test != 1
    * match test != true
    * match test != "Fernando"
    * match test != []
    * match test != {}
    * match test != '#array'
    * match test != '#boolean'
    * match test == '#object'
    * match test != '#(expected)'

#    distinto !=
#    igual ==

  Scenario: Definición no es igual a Array

    * def arrayTest = [1,2,3,4]
    * match arrayTest != '#[1]'
    * match arrayTest == '#array'
    * match arrayTest != '#[]? _ > 2'
    * match arrayTest == '#[]? _ > 1'
  Scenario: Definition Not Equals Object

    * def expected = { nombre: 'Fer'}
    * def test = { nombre: 'Silvia'}

    * match test != { nombre: 'Antonio'}
    * match test != null
    * match test != 1
    * match test != true
    * match test != "Fernando"
    * match test != []
    * match test != {}
    * match test != '#array'
    * match test != '#boolean'
    * match test == '#object'
    * match test != '#(expected)'

  Scenario: Definition Not Equals Array

    * def arrayTest = [2,3,4]
    * match arrayTest != '#[1]'
    * match arrayTest == '#array'
    * match arrayTest != '#[]? _ > 2'
    * match arrayTest == '#[]? _ > 1'