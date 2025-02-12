# Author: Bryan Umaña Gómez
Feature: Login to Sucursal Virtual

  As a Bancolombia user
  I want to log in to Sucursal Virtual
  So that I can access my account and perform transactions

  #Successful login to the virtual branch
  Scenario: Successful login to Sucursal Virtual
    Given I fill in the user field
      | user |
      | xxxx |
    And I enter my password
      | pass |
      | **** |
    When I press the "Ingresar" button
    Then I should be redirected to the home page

  #Unsuccessful login to the virtual branch
  Scenario: Unsuccessful login to Sucursal Virtual due to missing password
    Given I fill in the user field
      | user |
      | xxxx |
    When I press the "Ingresar" button
    Then I should see an error message
      | text  |
      | Error |
