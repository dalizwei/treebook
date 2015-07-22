require_relative 'page'
class RegisterPage < Page

  Path = Rails.application.routes.url_helpers.register_path
  First_name_field ='user_first_name'
  Last_name_field ='user_last_name'
  Profile_name_field ='user_profile_name'
  Email_field ='user_email'
  Password_field = 'user_password'
  Password_confirmation_field='user_password_confirmation'
  Register_button = 'Sign up'

  def self.fill_first_name_field_with(param)
    fill_in First_name_field , :with => param
  end

  def self.fill_last_name_field_with(param)
    fill_in Last_name_field , :with => param
  end

  def self.fill_profile_name_field_with(param)
    fill_in Profile_name_field , :with => param
  end

  def self.fill_email_field_with(param)
    fill_in Email_field , :with => param
  end

  def self.fill_password_field_with(param)
    fill_in Password_field , :with => param
  end

  def self.fill_password_confirmation_field_with(param)
    fill_in Password_confirmation_field , :with => param
  end

end