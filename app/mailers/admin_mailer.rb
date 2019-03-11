class AdminMailer < ActionMailer::Base

	def contact_notification(contact_id)
		@contact = Contact.find contact_id
		mail(:to => configatron.support_email, :from => @contact.email, :subject => "Message from #{@contact.name} <#{@contact.email}>")
	end

	def appointment_notification(appointment_id)
		@appointment = Appointment.find appointment_id
		mail(:to => configatron.support_email, :from => @appointment.email, :subject => "Appointment for #{@appointment.name} <#{@appointment.email}>")
	end

end
