RailsAdmin.config do |config|
  config.main_app_name = ["Área administrativa"]
  config.default_items_per_page = 20
  config.compact_show_view = false

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.show_gravatar = false

  config.authorize_with :cancan

  config.actions do
    bulk_delete

    ### Album ###
    config.model "Album" do

      navigation_label "Albuns"
      list do
        field :id
        field :name
        field :status
      end
      edit do
        field :name
        field :publish_date
        field :photos
        field :description, :wysihtml5 do
          config_options toolbar: { fa: true, image: false }
        end
        field :status
      end
    end

    ###  Contact  ###
    config.model "Contact" do
      navigation_label "Contatos"
      list do
        field :id
        field :name
        field :email
        field :phone
      end
      edit do
        field :name
        field :email
        field :phone
        field :message
      end
      show do
        field :id
        field :name
        field :email
        field :phone
        field :message
      end
    end

    ### Content Builder ###
    config.model "ContentBuilder" do

      navigation_label "Notícia"
      list do
        field :id
        field :title
        field :count_read
        field :date_publish
        field :status
      end
      edit do
        field :title
        field :date_publish
        field :written_by
        field :content_builder_category do
          inline_add false
          inline_edit false
        end
        field :summary
        field :content_builder_archives
      end
    end

    ### Content Builder Categories ###
    config.model "ContentBuilderCategory" do
      navigation_label "Notícia"
      # navigation_icon "icon-user"
      list do
        field :id
        field :name
      end
      edit do
        field :name
      end
    end

    ### Content Builder Categories ###
    config.model "ContentBuilderCountRead" do
      visible false
    end

    ### Content Builder Archives ###
    config.model "ContentBuilderArchive" do
      visible false
      edit do
        field :name
        field :file
      end
    end

    ### Photo ###
    config.model "Photo" do
      visible false
      edit do
        field :image
        field :cover
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

    dropzone do
      only ["Album"]
    end

    content_builder do
      only ["ContentBuilder"]
    end
  end
end
