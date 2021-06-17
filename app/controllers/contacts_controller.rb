class ContactsController < ApplicationController
def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: 'Merci, votre message a bien été envoyé. On vous contacte au plus vite !'
    else
      flash.now[:error] = 'Nous ne pouvons pas envoyer votre message'
      render :new
    end
  end
end

