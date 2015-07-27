#require_relative 'page' #no need if framework is under app/feature *i dont know the reason
class PhotosPage < Page
    Path =Rails.application.routes.url_helpers.photos_path
    Title='Treebook'
    
    
end