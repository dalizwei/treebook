
module Navigation
  include Capybara::DSL
  def goto
    visit self::Path
  end
end