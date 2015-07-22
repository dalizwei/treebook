require_relative '../navigation'
class Page
  Path='/'
  include Capybara::DSL
  extend Navigation
end