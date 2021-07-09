Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/items' do
    get '/', to: 'items#index'
    post '/', to: 'items#create'
    get '/:id', to: 'items#show'
    put '/:id', to: 'items#update'
    delete '/:id', to: 'items#destroy'
  end

  scope '/api/v1' do
    resources :items
  end
end
