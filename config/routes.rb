Rails.application.routes.draw do
  root 'static#home'
  get '/rsvp', to: 'rsvp#new', as: :rsvp_new
end
