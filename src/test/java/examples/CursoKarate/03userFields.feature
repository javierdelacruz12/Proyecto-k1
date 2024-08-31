
#34. Match tipo de campo y expresión regular

Feature: Check returned users by API

  Background:
    * url 'https://gorest.co.in'
    * header Accept = 'application/json'

  Scenario: get list of all users
    Given path '/public-api/users'
    When method GET
    Then status 200
    * print response

	# param envio de parametro
#  Ejemplo del por que falla cuando el correo tiene la extención example {2,4}, se debe a que tiene 7 letras y no ciumple con el mach realizado
  Scenario: get user with id 7374987 by param
    Given path '/public-api/users'
    And param id = '7374987'
    When method GET
    Then status 200
    * print response
    And match $.data[0] contains {id:"#number",name:"#string",email:"#regex [A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}",gender: "#notnull"}
#Ejemplo exitoso donde el correo cumple con lo indicado {2,4}
  Scenario: get user with id 7374991 by param
    Given path '/public-api/users'
    And param id = '7374991'
    When method GET
    Then status 200
    * print response
    And match $.data[0] contains {id:"#number",name:"#string",email:"#regex [A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}",gender: "#notnull"}


		# #null // #notnull // #boolean // #number // #object // #array // #string // #regex // #uuid