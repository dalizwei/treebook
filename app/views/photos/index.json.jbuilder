json.array!(@photos) do |photo|
  json.extract! photo, :id, :user_id, :photo_name, :thumb_link, :photo_link, :photo_descript
  json.url photo_url(photo, format: :json)
end
