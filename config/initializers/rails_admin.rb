RailsAdmin.config do |config|
  config.main_app_name = ["Área administrativa"]
  config.default_items_per_page = 20
  config.compact_show_view = false

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with :cancan

  config.actions do
    bulk_delete

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
