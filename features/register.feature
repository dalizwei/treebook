
Feature: a user can register to use Application
  Scenario: register as a user
    Given I am on signing up page
    When I enter my full name
    And I enter a unique profile name
    And I enter a unique e-mail
    And I enter a a password and i confirm it
    And I press register
    Then I should get to Statuses