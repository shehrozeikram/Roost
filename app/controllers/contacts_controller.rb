class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Thank You For Contacting Us '
      redirect_to @contact
    else
      flash[:danger] = @contact.errors.full_messages[0]
      render :new, status: :unprocessable_entity
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
