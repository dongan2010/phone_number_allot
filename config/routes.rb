Rails.application.routes.draw do
  scope '/api', module: :api, defaults: { format: :json } do
    post '/phone_numbers/allot', to: 'phone_numbers#allot'
  end
end
