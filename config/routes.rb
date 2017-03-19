Rails.application.routes.draw do
  root 'static#home'
  get '/rsvp', to: 'rsvp#new', as: :rsvp_new
  post '/rsvp', to: 'rsvp#create', as: :rsvps
  get '/rsvp/list', to: 'rsvp#list', as: :rsvp_list
end
