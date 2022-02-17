RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
  
    config.model "photo" do
      navigation_label "foto"
      edit do
        field :name
        field :publish_date
        field :description, :wysihtml5 
     end
   end 

    config.model "Album" do
      navigation_label "Galeria"
       list do
         field :id
         field :image
         field :name
         field :status
      end
     edit do
        field :image 
        field :name
        field :description, :wysihtml5
        field :status 
      end
    end 
  config.model "Video" do
    navigation_label "Galeria"
      list do
        field :id
        field :status
        field :link
    end
    edit do
       field :title
       field :link
       field :publish_date
       field :description, :wysihtml5
       field :status
     end
  end 
  config.model "About" do
    navigation_label "Sobre nós"
   list do
        field :id
        field :title
    end
    edit do
      field :title
      field :description, :wysihtml5 
    end
  end
  config.model "FotoAbout" do
    navigation_label "Sobre nós"
   list do
        field :id
        field :image
    end
    edit do
      field :image
   end
 end 
  config.model "Promotion" do
    navigation_label "Promoção"
    weight -98
    list do
        field :id
        field :title
        field :status
        field :start_date
        field :finish_date
     end
    edit do
       field :title
       field :image
       field :start_date
       field :finish_date
       field :status
       field :form
       field :regulation, :wysihtml5 
    end
 end
 config.model "Programacao" do
  navigation_label "Programação"
    list do
      field :id
      field :status
      field :name
  end
  edit do
     field :name
     field :hour
     field :day
     field :status
  end
 end 
 config.model "Announcer" do
  navigation_label "Locutor"
    list do
      field :id
      field :image
  end
  edit do
     field :image
     field :text
  end
 end 
 config.model 'BannerAd' do
  navigation_label 'Banners'
  list do
    field :id
    field :format_ad
    field :title
    field :finish_date
    field :status
  end
  edit do
    field :format_ad, :belongs_to_association do
      inline_add false
      inline_edit false
    end
    field :title
    field :start_date
    field :finish_date
    field :url       
    field :file_ad, :carrierwave        
    field :status
  end      
end

###  BannerAds  ###
config.model 'FormatAd' do
  navigation_label 'Banners'
  visible false
end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
end
