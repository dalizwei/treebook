class RegisterPage < Page
include Capybara::DSL
  Path = Rails.application.routes.url_helpers.register_path
  Title=''
  My_identifiers=''
  First_name_field ='user_first_name'
  Last_name_field ='user_last_name'
  Profile_name_field ='user_profile_name'
  Email_field ='user_email'
  Password_field = 'user_password'
  Password_confirmation_field='user_password_confirmation'
  Register_button = 'Sign up'
  @@login_user = nil

  def self.fill_first_name_field_with
      page.assert_selector('#'+First_name_field)
      fill_in First_name_field , :with => @@login_user.first_name
  end

  def self.fill_last_name_field_with
    page.assert_selector('#'+Last_name_field)
    fill_in Last_name_field , :with => @@login_user.last_name
  end

  def self.fill_profile_name_field_with
    page.assert_selector('#'+Profile_name_field)
    fill_in Profile_name_field , :with => @@login_user.profile_name
  end

  def self.fill_email_field_with
    page.assert_selector('#'+Email_field)
    fill_in Email_field , :with => @@login_user.email
  end

  def self.fill_password_field_with
    page.assert_selector('#'+Password_field)
    fill_in Password_field , :with => @@login_user.password
  end

  def self.fill_password_confirmation_field_with
    page.assert_selector('#'+Password_confirmation_field)
    fill_in Password_confirmation_field , :with => @@login_user.password
  end

  def self.press_sign_up_button
    page.assert_selector("input[type=submit][value='Sign up']")
    click_button 'Sign up'
  end

  ##
  #
  #
  # 6 fields to fill first and last name, profile, email, password and password confirmation
  #
  #
  def self.register
    remember_last_registered
    fill_first_name_field_with
    fill_last_name_field_with
    fill_profile_name_field_with
    fill_email_field_with
    fill_password_field_with
    fill_password_confirmation_field_with
    press_sign_up_button
  end

  def self.remember_last_registered
    @@login_user = FactoryGirl.build(:user) unless @@login_user.present?
  end

  def self.register_without_browser
    @@login_user= FactoryGirl.create(:user)
  end

  def self.login_user
    @@login_user
  end

  private_class_method :fill_profile_name_field_with, :fill_first_name_field_with, :fill_last_name_field_with
  #private_constant :Path
end