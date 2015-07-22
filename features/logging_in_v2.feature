
Feature: a user can log in to the Application
  Scenario: logging in as a user
    Given I am on logging page v2
    When I log in
    Then I should get to Statuses v2