Rails.application.routes.draw do
  

  get 'login', to: "session#new"
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'

  namespace :admin do
    get 'dashboard/orders'
    get '/dashboard/contacts'
  end


  root 'pages#home', as: 'root'

  get '/about', to: 'pages#about_us'

  get '/products/categories/soft', to: 'pages#categories', as: '/soft'
  get '/products/cans/330ml', to: 'pages#products330', as: '/c330ml'
  get '/products/bottle_drinks', to: 'pages#bottle_drinks', as: '/bottle_drinks'
  get '/products/energy_drinks', to: 'pages#energy_drinks', as: '/energy_drinks'
  get '/products/beer', to: 'pages#beer', as: '/beer'
  get '/products/mineral_water', to: 'pages#mineral_water', as: '/mineral_water'
  get '/products/spirit_drinks', to: 'pages#spirit_alc', as: '/spirit_drinks'


  get '/order-now', to: 'pages#order_now', as: '/order-now'
  post '/order-now', to: 'pages#place_order'
  get '/contact', to: 'pages#contact_us', as: '/contact'
  post '/contact', to: 'pages#create'

   get '/change_locale/:locale', to: 'language#change_locale', as: :change_locale
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
