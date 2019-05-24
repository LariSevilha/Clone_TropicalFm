RailsAdmin.config do |config|
  config.main_app_name = ["Área administrativa"]
  config.default_items_per_page = 20
  config.compact_show_view = false
  #parametro = SystemParameter.first


  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with :cancan

  config.actions do
    bulk_delete


    config.model "Menu" do
      navigation_label "Parâmetros"
      visible do
        true if bindings[:controller].current_user.email == "suporte@agenciaw3.digital"
      end
      list do
        field :id
        field :name
        field :type_menu
      end
      edit do
        field :type_menu
        field :name
      end
    end

    config.model "LinkCategory" do
      navigation_label "Links"
      list do
        field :id
        field :name
      end
      edit do
        field :menu do
          inline_add false
          inline_edit false
        end
        field :name
      end
    end

    config.model "Link" do
      navigation_label "Links"
      list do
        field :id
        field :name
        field :url
      end
      edit do
        field :link_category do
          inline_add false
          inline_edit false
        end
        field :name
        field :url
        field :image
      end
    end

    config.model "SystemParameter" do
      navigation_label "Parâmetros"
      visible do
        true if bindings[:controller].current_user.email == "suporte@agenciaw3.digital"
      end
      list do
        field :survey
        field :photo_gallery
        field :photo_gallery_home
        field :video_gallery
        field :video_gallery_home
        field :nav_menu
        field :banner
        field :big_slide
        field :last_news
        field :featured
      end
      edit do
        field :survey
        field :photo_gallery
        field :photo_gallery_home
        field :video_gallery
        field :video_gallery_home
        field :nav_menu
        field :banner
        field :big_slide
        field :news
        field :last_news
        field :featured
      end
    end

    config.model "User" do
      navigation_label "Gerenciar Usuários"
      list do
        field :id
        field :name
        field :email
        field :updated_at
        field :admin
      end
      edit do
        field :name
        field :email
        field :password
        field :password_confirmation
        field :admin
      end
    end

    dashboard

    delete

    edit

    index

    new
  end
end
