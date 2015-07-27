
module Navigation
  include Capybara::DSL
  #include MiniTest::Assertions  # no need if framework is under app/feature *i dont know the reason
  def goto
    visit self::Path
  end

  def is_at
#    assert page.has_title?(self::Title)
    page.assert_selector('title', :text => /^#{self::Title}$/, :visible => false)
#    puts'eeee'
  end

  def go_back
    page.evaluate_script('window.history.back()')
  end

  def go_home
    visit Rails.application.routes.url_helpers.root_path
  end
end