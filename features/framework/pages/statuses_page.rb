#require_relative 'page' #no need if framework is under app/feature *i dont know the reason
class StatusesPage < Page
  Path = Rails.application.routes.url_helpers.feed_path
  Title = 'Statuses'

end