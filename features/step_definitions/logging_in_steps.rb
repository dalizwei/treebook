Given(/^I am on logging page$/) do
  RegisterPage.register_without_browser
  LoginPage.goto
end

When(/^I enter an e\-mail$/) do
    LoginPage.fill_email_field_with
end

And(/^I enter a password$/) do
  LoginPage.fill_password_field_with
end

And(/^I press log in$/) do
  click_button LoginPage::Login_button
end

Then(/^I should get to Statuses$/) do

    StatusesPage.is_at
end

Then(/^I should get on Login page$/) do
  LoginPage.is_at
end

When(/^I Log out$/) do
  LoginPage.log_out
end