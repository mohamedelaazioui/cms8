Rails.application.routes.draw do
  get "gdpr_consents/create"
  get "contact_messages/new"
  get "contact_messages/create"
  get "public/home"
  get "public/about"
  get "public/services"
  get "public/testimonials"
  namespace :admin do
    get "social_links/index"
    get "social_links/new"
    get "social_links/create"
    get "social_links/edit"
    get "social_links/update"
    get "social_links/destroy"
    get "testimonials/index"
    get "testimonials/new"
    get "testimonials/create"
    get "testimonials/edit"
    get "testimonials/update"
    get "testimonials/destroy"
    get "services/index"
    get "services/new"
    get "services/create"
    get "services/edit"
    get "services/update"
    get "services/destroy"
    get "pages/index"
    get "pages/new"
    get "pages/create"
    get "pages/edit"
    get "pages/update"
    get "pages/destroy"
    get "dashboard/index"
  end
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
