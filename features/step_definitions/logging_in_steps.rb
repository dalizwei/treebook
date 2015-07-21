

Given(/^I am on logging page$/) do
  visit login_path
end

When(/^I enter an e\-mail$/) do
  fill_in 'user_email', :with => "mohamed.ali@sfari.com"
end

And(/^I enter a password$/) do
  fill_in 'user_password', :with => "12345678"
end

And(/^I press log in$/) do
  click_button 'Log in'
end

Then(/^I should get to Statuses$/) do

    assert page.has_content?("Statuses")
end