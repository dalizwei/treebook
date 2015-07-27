Given(/^I am on logging page v2$/) do
  LoginPage.goto
end

When(/^I log in$/) do
  LoginPage.log_in_as @login_user
end



And(/^I go to Photos page$/) do
  PhotosPage.goto
end

And(/^I go to Statuses$/) do
  StatusesPage.goto
end

Then(/^I can go back$/) do
  Page.go_back
end

And(/^I should get on Photos page$/) do
  PhotosPage.is_at
end

Then(/^I should get to Statuses v2$/) do

  StatusesPage.is_at
end
