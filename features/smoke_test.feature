Feature: A user can register
  Consult statuses and add a new status
  Consult photos and a new photo
  Logout and login to his account

  Scenario:test
    Given I am on signing up page
    When I sign up
    Then I should get to Statuses
    When I press new status
    Then I should get to new status page
    When I post a new status
    Then I should get to the show page
    When I press the photos link
    Then i should get to the photos page
    Given I am on new photo page
    When I fill all fields with space-tab press
    When I Log out
    Then I should get on Login page
    When I log in
    Then I should get to Statuses


