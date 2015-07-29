
Feature: a user can register to use Application
  Scenario: register as a user
    Given I am on signing up page
    When I sign up
    Then I should get to Statuses