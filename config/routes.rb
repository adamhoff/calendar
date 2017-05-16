Rails.application.routes.draw do
  root: '/months'
  resources :months, only: [:index, :show] do
    resources :days
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
