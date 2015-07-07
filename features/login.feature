Feature: Login
  In order to be able to see data for my account
  As a user
  I want to be able to log into my account

  Scenario: A user logs into his account
    Given I am a registered user
    And I am on the home page
    When I click on the login link
    And I submit the login form
    Then I should see my dashboard
