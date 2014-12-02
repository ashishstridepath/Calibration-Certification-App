class UserMailer < ActionMailer::Base
  default :from => "kumarashish1601@gmail.com"
  
  def send_certificate(customer)
    @customer = customer
    
    mail(:to => @customer.email_address, :subject => "New Certificate")
  end
end
