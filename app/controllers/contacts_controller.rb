class ContactsController < ApplicationController

	def show
    @contact = Contact.new
	end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
			# AdminMailer.contact_notification(@contact.id)
      redirect_to root_path, :notice => "Thank you for contact us"
    else
      redirect_to root_path, :alert => "Some error occur"
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
