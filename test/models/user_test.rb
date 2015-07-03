require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "the user should enter a first name" do
    user = User.new
    assert !user.save, "The user is saved"
    assert !user.errors[:first_name].empty?, "there are no errors on the first name field"
  end


  test "the user should enter a last name" do
    user = User.new
    assert !user.save, "The user is saved"
    assert !user.errors[:last_name].empty?, "there are no errors on the last name field"
  end


  test "the user should enter a profile name" do
    user = User.new
    assert !user.save, "The user is saved"
    assert !user.errors[:profile_name].empty?, "There are no errors on the profile name field"
  end


  test "the user should enter a unique profile name" do
    user = User.new
    user.profile_name= users(:dali).profile_name
    assert !user.save, "The user is saved"
    assert !user.errors[:profile_name].empty?, "There are no errors related to the uniqueness on the profile name field"
  end


  test "the user should have a well formated prfile name" do
    user=User.new
    user.profile_name='Profile with spaces'
    assert !user.save, "The user is saved"
    assert !user.errors[:profile_name].empty?, "There are no errors related to the format on the profile name field"
    assert user.errors[:profile_name].include?('Profile name must be formatted correctly.'),"The error generated doesn't match the error expected"
  end

end