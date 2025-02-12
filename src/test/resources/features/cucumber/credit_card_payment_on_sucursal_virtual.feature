# Author: Bryan Umaña Gómez
Feature: Credit Card Payment on Sucursal Virtual

  As a Bancolombia user
  I want to make credit card payments through the virtual branch
  So that I can manage my credit card debts efficiently

  Background:
    Given I am logged into the virtual branch
    And I navigate to the credit card payment section

  Scenario Outline: Successful credit card payment
    Given I select the "<cardType>" card to pay
    And I enter the amount "<amount>" to pay
    And I select my savings account as the source of payment
    When I press the "Continue" button
    Then I should see a payment confirmation message

    Examples:
      | cardType   | amount |
      | Visa       | 100    |
      | Amex       | 200    |
      | MasterCard | 500    |

