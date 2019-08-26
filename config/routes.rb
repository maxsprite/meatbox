Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users,
             path: 'api',
             path_names: {
               sign_in: 'sign_in',
               sign_out: 'log_out',
               registration: 'sign_up'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope 'api' do
    get 'products/index', to: 'products#index'
  end
end
