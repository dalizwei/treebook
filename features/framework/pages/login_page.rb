class LoginPage < Page
  Path = Rails.application.routes.url_helpers.login_path
  Title = 'Treebook'
  My_identifiers=''
  Email_field='user_email'
  Password_field = 'user_password'
  Login_button = 'Log in'

  def self.fill_email_field
    page.assert_selector('#'+Email_field)
    fill_in Email_field , :with => RegisterPage.login_user.email
  end

  def self.fill_password_field
    page.assert_selector('#'+Password_field)
    fill_in Password_field , :with => RegisterPage.login_user.password
  end

  def self.press_login_button
    page.assert_selector("input[type=submit][value='#{Login_button}']")
    click_button Login_button
  end

  def self.log_in_as
    fill_email_field
    fill_password_field
    press_login_button
  end




end

