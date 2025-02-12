# Author: Bryan Umaña Gómez
Feature: Home Product Purchase on Mobile App

  As a homemaker
  I want to purchase home products through the mobile app
  So that I can manage my household needs efficiently

  Background:
    Given I am logged into the mobile app
    * I navigate to the home products category

  #Scenario 1: Successful purchase of home products
  Scenario: Successful purchase of home products
    Given I add a "Kitchen Blender" to the cart
    * I add a "Set of Towels" to the cart
    When I proceed to checkout
    * I complete the payment process
    Then I should see an order confirmation message

  #Scenario 2: Failed purchase due to insufficient balance
  Scenario: Failed purchase due to insufficient balance
    Given I add a "Vacuum Cleaner" to the cart
    * I add a "Laundry Basket" to the cart
    When I proceed to checkout
    * I attempt to complete the payment process
    Then I should see an error message indicating insufficient balance