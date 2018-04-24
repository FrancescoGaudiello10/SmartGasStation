Rails.application.routes.draw do

    get 'welcome/index'

    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

    match ':controller(/:action(/:id))', :via => :get

    root 'welcome#index'
    #root to user signin https://stackoverflow.com/a/12994856/1440037
    # devise_scope :user do
    #     root to: "devise/sessions#new"
    # end

    resources :cars
    resources :stations

end
