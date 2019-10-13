Rails.application.routes.draw do
  root 'pets#index'
  resources :testimonials
end
