class ContactsController < ApplicationController
  def index
    @contact = Contact.new

    @page_title = "Fale conosco - #{site_name}"
    logo
  end

  def create
    @page_title = "Fale conosco - #{site_name}"
    logo
    
    @contact = Contact.new(contact_params)

    if verify_recaptcha(model: @contact)
      if valid_fields(@contact).errors.empty?
        if @contact.save
          send_mail
        else
          flash[:error] = "Erro ao enviar e-mail, tente novamente"
          render "index"
        end
      else
        render "index"
      end
    else
      flash[:error] = "reCaptcha Inválido."
      render "index"
    end
  end

  def send_mail
    contact = contact_params
    contact['request'] = request.base_url
    contact['site_name'] = site_name
    contact_params = contact

    if ContactMailer.send_mailer(contact_params).deliver_now
      redirect_to contacts_path, flash: {
        notice: "Seus dados foram enviados com sucesso."
      }
    else
      flash[:error] = "Falhou. Tente novamente"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name, :email, :phone, :subject, :message
    )
  end

  def valid_fields(i)
    i.attributes.each do |attribute, value|
      if (attribute != 'id' && attribute != 'created_at' && attribute != 'updated_at') &&
      (value == '' || value == ' ' || value == nil || !value.present?)
        i.errors.add(attribute, "não pode ficar vazio.")
      end
    end
    i
  end
end
