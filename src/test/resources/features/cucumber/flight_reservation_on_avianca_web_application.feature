# Author: Bryan Umaña Gómez
Feature: Flight Reservation on Avianca Web Application

  As a traveler
  I want to reserve flight tickets on Avianca's web application
  So that I can plan my trips conveniently

  Background:
    Given I am on the Avianca web application
    And I navigate to the flight reservation section

  #Successful reservation
  Scenario Outline: Successful reservation from Medellin to Canada and Bogota to Paris
    Given I select <from> as the departure city
    * I select <to> as the destination city
    * I select <class> as the travel class
    * I enter <adults> and <children> as passengers
    When I search for available flights
    * I select a flight from the results
    * I complete the payment process
    Then I should see a confirmation message for my reservation

    Examples:
      | from     | to     | class    | adults | children |
      | Medellin | Canada | Economy  | 2      | 2        |
      | Bogotá   | Paris  | Business | 4      | 4        |

  #Failed reservation
  Scenario Outline: Failed reservation from Medellin to Canada and Bogota to Paris due to payment failure
    Given I select <from> as the departure city
    * I select <to> as the destination city
    * I select <class> as the travel class
    * I enter <adults> and <children> as passengers
    When I search for available flights
    * I select a flight from the results
    * I fail to complete the payment process
    Then I should see an error message indicating payment failure
    Examples:
      | from     | to     | class    | adults | children |
      | Medellin | Canada | Economy  | 2      | 2        |
      | Bogotá   | Paris  | Business | 4      | 4        |