class LoginPage < Page
  Path = Rails.application.routes.url_helpers.login_path
  Title = 'Treebook'
  My_identifiers=''
  Email_field='user_email'
  Password_field = 'user_password'
  Login_button = 'Log in'

  def self.fill_email_field_with
    fill_in Email_field , :with => RegisterPage.login_user.email
  end

  def self.fill_password_field_with
    fill_in Password_field , :with => RegisterPage.login_user.password
  end

  def self.log_in_as
    fill_email_field_with
    fill_password_field_with
    click_button Login_button
  end




end

