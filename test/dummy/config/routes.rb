Rails.application.routes.draw do
  mount Leather::Engine => '/'
  devise_for :users
end
