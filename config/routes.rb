# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  get '/covid19/:page' => 'covid19#show'

  root 'covid19#show', page: 'casualty_map'

end
