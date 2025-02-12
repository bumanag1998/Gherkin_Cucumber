# Author: Carlos José Cogollo Hernandez

  Feature: credit_card_payment

    As a Bancolombia user
    I want to pay off my credit cards

    Background:
      Given I am logged in
      And go to credit card section

    Scenario Outline:
      Given Select <tipoTc> card to pay
      And Select radio Button "Otro valor"
      And Digit <ammount> to pay
      And Select <account> source of payment
      When Press button "Continuar"
      Then Show complete transaction message

      Examples:
        |     tipoTc    |      ammount    |  account  |
        |    Visa       |       100       | xxxxxxxx  |
        |    Amex       |       200       | xxxxxxxx  |
        | MasterCard    |       500       | xxxxxxxx  |

