class CustomerMailer  < ActionMailer::Base #< ApplicationMailer::Base
	default from: "autowerkstatt@web.de"
	layout 'mailer/text'

	def send_mail(customer)
      @customer = customer
      mail(to: @customer.email, subject: 'Wichtige Mitteilung Ihrer Autowerkstatt')
      
    end 

end
 #"kone7347@gmail.com"