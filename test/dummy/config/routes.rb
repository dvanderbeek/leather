Rails.application.routes.draw do
  root to: "application#index"
  mount Leather::Engine => "/"
end
