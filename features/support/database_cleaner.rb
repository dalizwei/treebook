begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'

  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Around do |scenario, block|
  if scenario.name=='logging in as a user'
    u = User.new(:first_name=>'Mohamed ali', :last_name=>'Sfari', :profile_name=>'meds', :email => 'mohamed.ali@sfari.com', :password => '12345678', :password_confirmation => '12345678')
    u.save
  end
  DatabaseCleaner.cleaning(&block)
end