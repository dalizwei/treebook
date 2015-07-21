require 'rspec'
require 'rails_helper'

RSpec.describe Photo, :type => :model do

  it 'should have a name' do

    expect {subject.save!}.to raise_error(ActiveRecord::RecordInvalid )
  end
  context 'photo with a name' do
    it 'should have a link' do
      subject() { Photo.new(photo_name: 'test') }
      expect {subject.save!}.to raise_error(ActiveRecord::RecordInvalid )
    end
  end

end