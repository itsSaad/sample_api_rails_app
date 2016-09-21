Rails.application.routes.draw do
  resources :owners, param: :name do
    resources :articles
  end
end
