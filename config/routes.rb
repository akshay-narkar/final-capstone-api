Rails.application.routes.draw do
   namespace 'api' do
      namespace 'v1' do
          mount_devise_token_auth_for 'User', at: 'auth'

       resources :users, only: [:new,:create,:destroy] do
           resources :favs,  only: [:index, :create, :destroy]
       end
        resources :courses, only: [:index, :show]
      end
    end
end
