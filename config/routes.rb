Rails.application.routes.draw do
  # get '/tweets/seed', to: 'tweets#seed'
  get '/tweets/:hashtag', to: 'tweets#latest_of_tag'

end
