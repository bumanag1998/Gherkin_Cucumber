# Author: Bryan Umaña Gómez
Feature: Online Enrollment on Web Application

  As a student
  I want to enroll in courses through the web application
  So that I can manage my academic schedule efficiently

  Background:
    Given I am logged into the web application
    * I navigate to the enrollment section

  #Scenario 1: Successful enrollment in a course
  Scenario Outline: Successful enrollment in a course
    Given I select the course "<course>"
    * I confirm my selection
    When I proceed to payment
    * I complete the payment process
    Then I should see an enrollment confirmation message

    Examples:
      | course                             |
      | Introduction to Computer Science   |
      | Advanced Mathematics               |
      | Data Structures and Algorithms     |

  #Scenario 2: Failed enrollment due to insufficient balance
  Scenario: Failed enrollment due to insufficient balance
    Given I select the course "Data Structures and Algorithms"
    * I confirm my selection
    When I proceed to payment
    * I attempt to complete the payment process
    Then I should see an error message indicating insufficient balance