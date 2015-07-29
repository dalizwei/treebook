Given(/^I am on signing up page$/) do
  RegisterPage.goto
  #page.status_code.should == 200 # not implemented on selenium and 'll not.
end

When(/^I sign up$/) do
  RegisterPage.register
end