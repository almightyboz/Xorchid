Rails.application.routes.draw do

  root 'plants#index'

  resources :plants do
    resources :waterings
  end

end
