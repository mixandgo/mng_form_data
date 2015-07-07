Feature: User registration
  In order to be able to see data for my account
  As a visitor
  I want to be able to create a personal free account

  Scenario: A visitor creates a personal free account
    Given I am on the home page
    When I click on the sign up link
    And I sign up for a personal free account
    Then I should see the account registration message
    And I should receive a registration confirmation email
