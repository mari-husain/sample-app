Rails.application.routes.draw do
  # static_pages_controller actions
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

  # application_controller actions
  root 'application#hello'
end
