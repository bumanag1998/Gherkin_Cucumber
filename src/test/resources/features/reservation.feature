# language: en
# Author: Carlos José Cogollo H

Feature: ticket_reservation

  As a Avianca user
  I want to make a ticket reservation

  Scenario Outline: Reservation Medellin to Canada successful
    Given I inserted <from> in the form
    And I inserted <to> in the form
    And I inserted <departure_date> in the form
    And I inserted <return_date> in the form
    And I inserted <count_adults> in the form
    And I inserted <count_childrens> in the form
    When press the button "Search for flight"
    Then A button appears with the text <resultado>

    Examples:
      | from     | to     | departure_date | return_date | count_adults | count_childrens | resultado     |
      | Medellin | Canada | 25/03/2022     | 28/03/2022  | 2            | 2               | Modify Search |
      | Bogotá   | Paris  | 25/03/2022     | 28/03/2022  | 4            | 4               | Modify Search |

  Scenario Outline: Reservation Medellin to Canada successful
    Given I inserted <from> in the form
    And I inserted <to> in the form
    And I inserted <departure_date> in the form
    And I inserted <count_adults> in the form
    And I inserted <count_childrens> in the form
    When press the button "Search for flight"
    Then A message appears with the text <resultado>

    Examples:
      | from     | to     | departure_date | count_adults | count_childrens | resultado                             |
      | Medellin | Canada | 28/03/2022     | 2            | 2               | Travel dates:: Select the return date |
      | Bogotá   | Paris  | 28/03/2022     | 4            | 4               | Travel dates:: Select the return date |