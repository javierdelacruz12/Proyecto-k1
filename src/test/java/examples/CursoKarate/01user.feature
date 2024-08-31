Feature:Check returned users by API
  Background:
    * url "https://gorest.co.in/"
    * header Accept = "application/json"

  Scenario: get list of all user 
    Given path "public/v2/users"
    When method GET
    Then status 200
    And def userResponse = response
#    Then match userResponse.data[*].email contains ['aaaaaaaaaaaa']
    * print response

    Scenario: Get list of all users - bat url
      Given path "public/v2/us"
      When method GET
      Then status 404
      * print response
   # param envio de parametro
  Scenario: get user with id 6 by param
    Given path '/public-api/users'
    And param id = '7374992'
    When method GET
    Then status 200
    * print response

  Scenario: get list all the users having gender Male
    Given path '/public-api/users'
    And param gender = 'male'
#    And params status = 'active'
    When method GET
    Then status 200
    And def userResponse = response
		#Then match userResponse.data[*].gender contains ['Female']
    * print response