HighVoltageDemo::Application.routes.draw do
  get '/home', to: redirect('/')
  root to: 'high_voltage/pages#show', id: 'home'
end
