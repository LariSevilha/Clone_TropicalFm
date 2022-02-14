class ContactController < ApplicationController
  def index
  
    @contacts = Contact.all
    @contacts = Contact.new
  end
end
