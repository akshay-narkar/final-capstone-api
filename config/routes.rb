Rails.application.routes.draw do
   namespace 'api' do
      namespace 'v1' do
          mount_devise_token_auth_for 'User', at: 'auth'

       resources :users do
           resources :favs
       end
        resources :courses
      end
    end
end
