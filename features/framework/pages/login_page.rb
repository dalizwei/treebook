#require_relative 'page' #no need if framework is under app/feature *i dont know the reason
class LoginPage < Page
  Path = Rails.application.routes.url_helpers.login_path
  Title = ''
  My_identifiers = ""

  Email_field='user_email'
  Password_field = 'user_password'
  Login_button = 'Log in'

  def self.fill_email_field_with(param)
    fill_in Email_field , :with => param
  end

  def self.fill_password_field_with(param)
    fill_in Password_field , :with => param
  end

  def self.log_in_as user
    puts '********************************************************************************************'
    puts user.class.name
    fill_email_field_with(user.email)
    fill_password_field_with(user.password)
    click_button Login_button
  end

  def self.log_out

  end



end

