When(/^I press new status$/) do
  StatusesPage.press_new_post_link
  Page.wait(2.second)
end

Then(/^I should get to new status page$/) do
  NewStatusPage.is_at
end

When(/^I post a new status$/) do
  NewStatusPage.post_status
end

Then(/^I should get to the show page$/) do
  #TODO create show page framework
  StatusesPage.is_at
end

When(/^I press the photos link$/) do
  PhotosPage.goto
end

Then(/^i should get to the photos page$/) do
  PhotosPage.is_at
end

Given(/^I am on new photo page$/) do
  NewPhotoPage.goto
end

When(/^I fill all fields with space-tab press$/) do
  NewPhotoPage.add_Photo
  Page.wait(5.second)
end