Rails.application.routes.draw do
  mount BookStore::Base => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
