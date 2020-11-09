Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  root "home#index"

  #Album
  get 'fotos' => 'albums#index', as: :albums
  get 'fotos/:slug' => 'albums#show', as: :album

  #Contact
  get 'contato' => 'contacts#index', :as => :contact
  post 'contato' => 'contacts#create', :as => :create_contact

  #News
  get 'noticias' => 'news#index', as: :news
  get 'noticias/:category' => 'news#list_by_category', as: :news_by_category
  get 'noticias/:category/:slug' => 'news#show', as: :news_show

  # Routes Content_Builder
  path_url = 'admin/content_builder/:id/create_images'
  path_method = 'rails_admin_content_builder/content_builder#create_images'
  put path_url => path_method
end
