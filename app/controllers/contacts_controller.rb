class ContactsController < ApplicationController

	def show
    @contact = Contact.new
	end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
			# AdminMailer.contact_notification(@contact.id)
      redirect_to root_path(:anchor => "contact_us"), :notice => "Thank you for your message. We will connect with you soon!"
    else
      redirect_to root_path(:anchor => "contact_us"), :alert => "You have to complete all fields"
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:name, :email, :message)
  end
end
