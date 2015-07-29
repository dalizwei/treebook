Feature: A user can register
  Consult statuses and add a new status
  Consult photos and a new photo
  Logout and login to his account

  Scenario:test
    Given I am on signing up page
    When I sign up
    Then I should get to Statuses
    When I Log out
    Then I should get on Login page
    When I log in
    Then I should get to Statuses


