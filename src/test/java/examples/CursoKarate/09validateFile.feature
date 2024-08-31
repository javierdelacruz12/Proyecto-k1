@test005
Feature: validate a File

  Scenario: Validate a file
    * bytes data = read('../Data/result.json')
    * match data == read('../Data/result.json')