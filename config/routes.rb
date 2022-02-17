Rails.application.routes.draw do
   

  get 'schedules/index'

  get 'prog/index'

  get 'schedule/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
        root to: 'home#index'
        get 'promotion', to: 'promotion#index', as: :promotion
        get 'announcer', to: 'announcer#index', as: :announcer
        get 'contact', to: 'contact#index', as: :contact
        get 'about', to: 'about#index', as: :about 
        get 'prog', to: 'prog#index', as: :prog



        #album
        get "fotos", to: "albums#index", as: :albums
        get "fotos/:slug", to: "albums#show", as: :album
        
        #video
        get 'video', to: 'video#index', as: :video
        get "videos/:slug", to: "video#show", as: :videos
end







 # get 'gallery/index'

  # devise_for :users
  # mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  # root "home#index"

  # Album
#   get "fotos" => "albums#index", as: :albums
#   get "fotos/:slug" => "albums#show", as: :album

#   # Contact
#   get "contato" => "contacts#index", as: :contact
#   post "contato" => "contacts#create", as: :create_contact

#   # News
#   get "noticias" => "news#index", as: :news
#   get "noticias/:category" => "news#list_by_category", as: :news_by_category
#   get "noticias/:category/:slug" => "news#show", as: :news_show

#   # Routes Content_Builder
#   path_url = "admin/content_builder/:id/create_images"
#   path_method = "rails_admin_content_builder/content_builder#create_images"
#   put path_url => path_method
# end