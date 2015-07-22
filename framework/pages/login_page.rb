require_relative 'page'
class LoginPage < Page
  Path = Rails.application.routes.url_helpers.login_path
  Email_field='user_email'
  Password_field = 'user_password'
  Login_button = 'Log in'

  def self.fill_email_field_with(param)
    fill_in Email_field , :with => param
  end

  def self.fill_password_field_with(param)
    fill_in Password_field , :with => param
  end

  def self.log_in_as
    fill_email_field_with('mohamed.ali@sfari.com')
    fill_password_field_with('12345678')
    click_button Login_button
  end

  def self.log_out

  end



end

