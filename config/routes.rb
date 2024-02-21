Rails.application.routes.draw do
  # get 'tours/new'
  # get 'weddings/new'
  root "home#index"

  get 'home/index', to: 'home#index'
  get 'home/restaurant', to: 'home#restaurant'
  get 'home/service', to: 'home#service'
  get 'home/team', to: 'home#team'
  get 'home/guide', to: 'home#guide'
  get 'home/testimonial', to: 'home#testimonial'
  get 'home/about', to: 'home#about'
  get 'home/package', to: 'home#package'
  get 'home/package_1', to: 'home#package_1'
  get 'home/package_2', to: 'home#package_2'
  get 'home/package_3', to: 'home#package_3'

  get 'home/wedding_hall_package_1', to: 'home#wedding_hall_package_1'
  get 'home/wedding_hall_package_2', to: 'home#wedding_hall_package_2'
  get 'home/wedding_hall_package_3', to: 'home#wedding_hall_package_3'



  resources :bookings

  resources :contacts

  resources :weddings

  resources :tours





end
