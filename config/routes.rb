Rails.application.routes.draw do


  root "home#index"

  get 'home/index', to: 'home#index'
  # get 'home/booking', to: 'home#booking'
  get 'home/contact', to: 'home#contact'
  get 'home/destination', to: 'home#destination'
  get 'home/service', to: 'home#service'
  get 'home/team', to: 'home#team'
  get 'home/testimonial', to: 'home#testimonial'
  get 'home/about', to: 'home#about'
  get 'home/package', to: 'home#package'

  # get 'bookings/index', to: 'bookings#index'

  resources :bookings



end
