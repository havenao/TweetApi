Rails.application.routes.draw do
  # Todo: REMOVE ME and replace with Cron to call this method
  # get "/tweets/get", to: "tweets#save_search"

  resources :tweets

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
