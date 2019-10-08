class ContactsController < ApplicationController
  def index
    @contact = Contact.new
    @page_title = "Fale conosco - Previna"
  end

  def create

    @contact = Contact.new(contact_params)

    #if verify_recaptcha(model: @register)
      if EmailValidator.valid?(contact_params[:email])
        if @contact.save
          send_mail
        else
          flash[:error] = "Erro ao enviar contato"
        end
      else
        flash[:error] = "O formato do email é inválido"
      end
    #end

  end

  def send_mail
    if ContactMailer.send_mailer(contact_params).deliver_now
      redirect_to contacts_path, :flash => { :notice => "Seus dados foram enviados com sucesso." }
    else
      flash[:error] = "Falhou. Tente novamente"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(
      :name, :email, :phone, :city, :uf, :subject, :message, :phone
    )
  end
end
