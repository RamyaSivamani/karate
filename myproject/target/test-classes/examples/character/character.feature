Feature: character
    In order to value
    As a role
    I want feature

    Scenario: insert a character

* def character =
"""
{
  "id": 1,
  "name": "goo"
  
  }

"""

Given url 'http://localhost:8080/api/characters'
And request character
When method post
Then status 200

Scenario: delete a character

Given url 'http://localhost:8080/api/characters/2'
When method delete
Then status 500
 
 