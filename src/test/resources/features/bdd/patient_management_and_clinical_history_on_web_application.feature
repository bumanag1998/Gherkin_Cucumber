# Author: Bryan Umaña Gómez
Feature: Patient Management and Clinical History on Web Application

  As a medical professional
  I want to manage patients and record their clinical history
  So that I can provide accurate and efficient medical care

  Background:
    Given I am logged into the web application
    * I navigate to the patient management section

  Scenario Outline: Successful registration of a new patient
    Given I enter the patient's details
      | Field         | Value            |
      | Name          | <name>           |
      | Age           | <age>            |
      | Gender        | <gender>         |
      | Contact Info  | <contact>        |
    When I save the patient's information
    Then I should see a confirmation message for the new patient registration
    Examples:
      | name       | age | gender | contact             |
      | John Doe   | 30  | Male   | john.doe@email.com  |
      | Jane Smith | 25  | Female | jane.smith@email.com|
      | Alice Brown| 40  | Female | alice.brown@email.com|