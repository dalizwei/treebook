class NewPhotoPage < Page
  Path =Rails.application.routes.url_helpers.new_photo_path
  Title='Treebook'
  My_identifiers=''
  Photo_link_field='photo_photo_link'

  def self.fill_photo_link_field
    page.assert_selector("##{Photo_link_field}")
    fill_in Photo_link_field , :with => ' '
  end

  def self.press_tab_key_in (param)
    find("##{param}").native.send_keys :tab
  end

  def self.add_Photo
    ApiMock.prepare_flikr_api
    fill_photo_link_field
    press_tab_key_in Photo_link_field
  end
end