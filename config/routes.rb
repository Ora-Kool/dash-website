Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/show'
  end


  root 'pages#home'

  get '/about', to: 'pages#about_us'

  get '/products/categories/soft', to: 'pages#categories'
  get '/products/cans/330ml', to: 'pages#products330'
  get '/products/bottle_drinks', to: 'pages#bottle_drinks'
  get '/products/energy_drinks', to: 'pages#energy_drinks'
  get '/products/beer', to: 'pages#beer'
  get '/products/mineral_water', to: 'pages#mineral_water'
  get '/products/spirit_drinks', to: 'pages#spirit_alc'


  get '/order-now', to: 'pages#order_now'
  post '/order-now', to: 'pages#place_order'
  get '/contact', to: 'pages#contact_us'
  post '/contact', to: 'pages#create'

   get '/change_locale/:locale', to: 'language#change_locale', as: :change_locale
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
