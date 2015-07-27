Given(/^I am on logging page$/) do
  LoginPage.goto
end

When(/^I enter an e\-mail$/) do
  fill_in LoginPage::Email_field , :with => "mohamed.ali@sfari.com"
end

And(/^I enter a password$/) do
  fill_in LoginPage::Password_field , :with => "12345678"
end

And(/^I press log in$/) do
  click_button LoginPage::Login_button
end

Then(/^I should get to Statuses$/) do

    StatusesPage.is_at
end