Rails.application.routes.draw do
  get 'signup', to: 'auth#show_signup'
  post 'signup', to: 'auth#signup'
  get 'login', to: 'auth#show_login'
  post 'login', to: 'auth#login'
  post 'logout', to: 'auth#logout'

  get 'profile', to: 'users#profile'
  get 'upload_file', to: 'users#show_upload_file'
  post 'upload_file', to: 'users#upload_file'
  get ':code', to: 'users#show_document'
end
