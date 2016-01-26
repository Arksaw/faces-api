Rails.application.routes.draw do
  namespace :v1 do
    resources :faces, only: [:index]
  end
end
