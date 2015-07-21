Feature: a user can log in to the Application
  Scenario: logging in as a user
    Given I am on logging page
    When I enter an e-mail
    And I enter a password
    And I press log in
    Then I should get to Statuses