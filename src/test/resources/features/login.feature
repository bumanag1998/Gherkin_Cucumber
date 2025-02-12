# language: e
# Author: Carlos José Cogolo H

Feature: loggin_to_sucursal_virtual

  As a Bancolombia user
  I want to loggin to Sucursal Virtual

  Scenario: Log in Successful Sucursal Virtual
    Given fill in the user field
      | user |
      | xxxx |
    And Enter my password
      | pass |
      | **** |
    When Press the "Ingresar" button
    Then The page will send me to the home page

  Scenario: Loggin wrong Sucursal Virtual
    Given fill in the user field
      | user |
      | xxxx |
    When Press the "Ingresar" button
    Then The page will display an error text
      | text  |
      | Error |
