HighVoltageDemo::Application.routes.draw do
  resources :inquiries, only: :create

  get '/home', to: redirect('/')
  root to: 'high_voltage/pages#show', id: 'home'
end
