Rails.application.routes.draw do
  scope :avo do
    get "user_episodes/", to: "avo/user_episodes#index"
    get "user_episodes/:id", to: "avo/user_episodes#show"
  end
  mount Avo::Engine, at: Avo.configuration.root_path
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
