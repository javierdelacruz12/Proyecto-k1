#39. Karate repeat
@test004
Feature: Generar con repetición

  Scenario: devolver una lista
    * def fun = function(i){return i*2}
    * def listResults = karate.repeat(3,fun)
    * print listResults
    * match listResults == [0,2,4]

  Scenario: agregar elementos al array
    * def arrayEmpty = []
    * def fun = function(i){arrayEmpty.push(i)}
#    * def fun = function(i){arrayEmpty.add(i)}
#    * def fun = function(i){ karate.log('repetición número:', i) }
    * karate.repeat(3, fun)
    * match arrayEmpty  == [0,1,2]
    * print arrayEmpty

  Scenario: agregar elementos al array con recuento en def
    * def count = 3
    * def fun = function(i){return {value: i}}
    * def arrayEmpty = karate.repeat(count, fun)
    * match arrayEmpty  == [{value: 0},{value: 1},{value: 2}]
    * print arrayEmpty

#  Explicación del error mostrado en el Scenario 2
#  Uso de push en lugar de add:
#  push es el método correcto en JavaScript para agregar elementos a una lista o array.
#  add es un método de Java utilizado en las clases List o ArrayList de Java, y no es compatible con el tipo de array que utiliza Karate (que se basa en JavaScript).