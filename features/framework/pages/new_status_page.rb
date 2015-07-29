class NewStatusPage < Page
  Path =Rails.application.routes.url_helpers.new_status_path
  Title='Treebook'
  My_identifiers=''
  Status_content_field='status_content'
  Post_button ='Create Status'

  @@status
  @@statuses=[]

  def self.fill_status_content_field
    @@status=FactoryGirl.build(:status)
    page.assert_selector('#'+Status_content_field)
    fill_in Status_content_field , :with => @@status.content
  end

  def self.press_post_button
      page.assert_selector("input[type=submit][value='#{Post_button}']")
      click_button Post_button
      @@statuses<<@@status
  end
  def self.post_status
    fill_status_content_field
    press_post_button
  end

  def self.statuses
      @@statuses
  end
  private_class_method :fill_status_content_field, :press_post_button
end