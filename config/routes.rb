Rails.application.routes.draw do
  root 'static#home'

  # rsvp
  get '/rsvp', to: 'rsvp#new', as: :rsvp_new
  post '/rsvp', to: 'rsvp#create', as: :rsvps
  get '/rsvp/list', to: 'rsvp#list', as: :rsvp_list

  # our story
  get '/our-story', to: 'static#our_story'

  # details
  get '/details', to: 'static#details'

  # registry
  get '/registry', to: 'static#registry'
end
