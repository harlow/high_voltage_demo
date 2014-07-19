HighVoltageDemo::Application.routes.draw do
  resources :inquiries, only: :create
end
