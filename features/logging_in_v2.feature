
Feature: a user can log in to the Application
  Scenario: logging in as a user
    Given I am on logging page v2
    When I log in
    And I go to Photos page
    And I go to Statuses
    Then I can go back
    And I should get to Statuses v2