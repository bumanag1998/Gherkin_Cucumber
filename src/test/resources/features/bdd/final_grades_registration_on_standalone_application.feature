# Author: Bryan Umaña Gómez
Feature: Final Grades Registration on Standalone Application

  As a teacher
  I want to register final grades for my students
  So that I can manage and report their academic performance accurately

  Background:
    Given I am logged into the standalone application
    And I navigate to the grades registration section

  Scenario Outline: Successful registration of final grades
    Given I select the student <student>
    And I enter the final grade <grade> for the course <course>
    When I save the grades
    Then I should see a confirmation message for the grade registration

    Examples:
      | student     | grade | course       |
      | John Doe    | 4.5   | Mathematics  |
      | Jane Smith  | 3.8   | Science      |
      | Alice Brown | 5.0   | History      |