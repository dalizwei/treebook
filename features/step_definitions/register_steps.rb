Given(/^I am on signing up page$/) do
  RegisterPage.goto
end

When(/^I enter my full name$/) do
  RegisterPage.fill_first_name_field_with 'mohamed'
  RegisterPage.fill_last_name_field_with 'ali'
end

And(/^I enter a unique profile name$/) do
  RegisterPage.fill_profile_name_field_with 'mohamedali'
end

And(/^I enter a unique e\-mail$/) do
  RegisterPage.fill_email_field_with 'mohamed@ali.com'
end

And(/^I enter a a password and i confirm it$/) do
  RegisterPage.fill_password_field_with '00000000'
  RegisterPage.fill_password_confirmation_field_with '00000000'
end

And(/^I press register$/) do
  click_button 'Sign up'
end