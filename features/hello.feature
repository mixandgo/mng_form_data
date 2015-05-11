Feature: Hello
  In order to make sure the site loads up
  As a user
  I want see the welcome screen

  Scenario: User sees the welcome screen
    When I go to the homepage
    Then I should see a welcome message
