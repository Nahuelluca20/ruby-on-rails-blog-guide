Rails.application.routes.draw do
  root "articles#index"

  # resources map 7 HTTP verbs
  # GET       /articles
  # GET       /articles/new
  # POST      /articles
  # GET       /articles/:id
  # GET       /articles/:id/edit
  # PATCH/PUT /articles/:id
  # DELETE    /articles/:id
  resources :articles do
    resources :comments
  end
  get "up" => "rails/health#show", as: :rails_health_check

end
