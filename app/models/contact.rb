class Contact < ApplicationRecord
  validates :email, :name, :topic, :message ,presence: true

end
