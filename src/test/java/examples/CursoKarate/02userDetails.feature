#Funciones, $, match y response

Feature: Check returned users by API

  Background:
    * url 'https://reqres.in/'
    * header Accept = 'application/json'
    * def sleep =
		"""
		function(seconds){
			for(i=0; i<=seconds; i++){
				java.lang.Thread.sleep(1000);
			}
		}
		"""
  Scenario: Use $
    Given path 'api/users/2'
    When method GET
    Then status 200
    And match $.data contains {id:2}
    And call sleep 10
    * print response

#  En este caso, $ representa la respuesta JSON completa y se compara con el objeto esperado.
#  Puedes usar match para verificar que la respuesta de una API cumple con ciertos criterios. Por ejemplo:And match $.nombre == 'Juan'Aquí, match verifica que el campo nombre en la respuesta sea igual a ‘Juan’.
#  En este caso, response se usa para acceder directamente al campo id de la respuesta.
  Scenario: Call get test user with id 2
    Given path 'api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == {"data": {"id": 2,"email": "janet.weaver@reqres.in","first_name": "Janet","last_name": "Weaver","avatar": "https://reqres.in/img/faces/2-image.jpg"},"support": {"url": "https://reqres.in/#support-heading","text": "To keep ReqRes free, contributions towards server costs are appreciated!"}}
#    compramos las respuestas con la fila 29 y 30
