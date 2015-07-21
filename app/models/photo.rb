class Photo < ActiveRecord::Base
  belongs_to :user
  validates :photo_link, :presence => :true
end
