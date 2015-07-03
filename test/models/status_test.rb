require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "That a status require a content" do
    status = Status.new
    assert !status.save, "The status get saved in the db without a content !"
    assert !status.errors[:content].empty?, "the status without a content has no error !"
  end

  test "that a status's content is at least tow letters long" do
    status= Status.new
    status.content="h"
    assert !status.save, "The status get saved to the db with a content of one letter long!"
    assert !status.errors[:content].empty?,"The status's content with a one letter long has no error!"
  end

  test "That the status has a user ID" do
    status =Status.new
    assert !status.save, "The status get saved to the db without a user ID"
    assert !status.errors[:user_id].empty?, "The status without a user ID has no error"
  end
end
