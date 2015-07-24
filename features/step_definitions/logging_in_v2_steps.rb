require File.expand_path('../../../framework/pages/login_page', __FILE__)
Given(/^I am on logging page v2$/) do
  LoginPage.goto
end

When(/^I log in$/) do
  LoginPage.log_in_as
end

Then(/^I should get to Statuses v2$/) do

    assert page.has_content?("All of the Statuses hahahaha")
end