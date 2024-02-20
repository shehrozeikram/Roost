Rails.application.routes.draw do
  get 'weddings/new'
  root "home#index"

  get 'home/index', to: 'home#index'
  get 'home/destination', to: 'home#destination'
  get 'home/service', to: 'home#service'
  get 'home/team', to: 'home#team'
  get 'home/guide', to: 'home#guide'
  get 'home/testimonial', to: 'home#testimonial'
  get 'home/about', to: 'home#about'
  get 'home/package', to: 'home#package'
  get 'home/wedding_hall', to: 'home#wedding_hall'


  resources :bookings

  resources :contacts

  resources :weddings



end
