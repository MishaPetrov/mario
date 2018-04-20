Rails.application.routes.draw do
  resources :products do
    resources :reviews, :except => [:show, :index]
  end
end
