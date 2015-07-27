require 'factory_girl'
require 'faker'

FactoryGirl.define do

  # user definition
  factory :user do |user|
    user.first_name { Faker::Name.first_name }
    user.last_name { Faker::Name.last_name }
    user.profile_name{ Faker::Name.last_name }
    user.email{ Faker::Internet.email(user.full_name) }
    user.password{Faker::Internet.password}
  end

  #status definition
  factory :status do |status|
    status.content { Faker::Hacker.say_something_smart }
    user
  end

  #photo definition
  factory :photo do |photo|
    photo.photo_name { Faker::Name.last_name }
    photo.photo_tag{ Faker::Name.last_name }
    photo.photo_link{ Faker::Avatar.image('my-own-slug') }
    photo.thumb_link{ Faker::Avatar.image('my-own-slug') }
    photo.photo_descript{ Faker::Name.last_name }
    photo.visibility{ Faker::Name.last_name }
    user
  end

  factory :user_with_statuses do
    # posts_count is declared as a transient attribute and available in
    # attributes on the factory, as well as the callback via the evaluator
    transient do
      statuses_count 5
    end

    # the after(:create) yields two values; the user instance itself and the
    # evaluator, which stores all values from the factory, including transient
    # attributes; `create_list`'s second argument is the number of records
    # to create and we make sure the user is associated properly to the post
    after(:create) do |user, evaluator|
      create_list(:post, evaluator.statuses_count, user: user)
    end
  end

end