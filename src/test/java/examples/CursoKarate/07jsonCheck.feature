#38. Each y contains
@test003
Feature: JSON Check

  Scenario: Calcular la Temperatura
    Given def temperature = {celsius: 100, fahrenheit: 212}
    Then match temperature contains {fahrenheit: '#? _ == $.celsius *1.8 + 32'}
    And match temperature == {celsius: '#number', fahrenheit: '#($.celsius *1.8 + 32)'}
#    And print response

  Scenario: Hotels Info
    Given def json =
	"""
	{
		"hotels": [
			{"roomInfo": [{"roomPrice":618}], "total":618},
			{"roomInfo": [{"roomPrice":500}], "total":500}
		]
	}
	"""
    Then match each json.hotels contains {total: '#? _ == _$.roomInfo[0].roomPrice'}
    And match each json.hotels == {roomInfo: '#array', total: '#(_$.roomInfo[0].roomPrice)'}
#    And print response

#  contains: Este método se utiliza para verificar que una colección contiene un elemento específico o
#  que un objeto contiene un campo con un valor específico. Es útil para validar la presencia de ciertos datos dentro de una respuesta JSON.
#  each: Este método se utiliza para iterar sobre cada elemento de una colección (como una lista o un array)
#  y aplicar una validación o aserción a cada uno de ellos. Es especialmente útil cuando necesitas asegurarte de que todos los elementos de una lista cumplen con ciertas condiciones.