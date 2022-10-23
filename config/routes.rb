Rails.application.routes.draw do
  root "tweets#index"

  get '/tweets', to: 'tweets#index'
  # get '/tweets/seed', to: 'tweets#seed'
  get '/tweets/:hashtag', to: 'tweets#latest_of_tag'

end
