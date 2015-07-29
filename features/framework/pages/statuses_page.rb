class StatusesPage < Page
  Path = Rails.application.routes.url_helpers.feed_path
  Title = 'Statuses'
  My_identifiers=''
  New_post_link ='Post a new Status'

  def self.press_new_post_link
    #page.assert_selector("a[value='#{New_post_link}']")
    page.assert_selector('a', :text => /^#{New_post_link}$/, :visible => true)
    click_link New_post_link
  end
end