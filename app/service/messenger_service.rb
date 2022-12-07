class MessengerService
  
  def send_sms (number,name)
    # bisa di set di env
    # acc_sid = ENV['TWILIO_ACC_SID']
    # authn_token = ENV['TWILIO_AUTH']

    @client = Twilio::REST::Client.new(acc_sid, authn_token)

    #from = '+14155238886' disesuaikan dengan nomor yg di sandbox  
    string_number = number.to_s
    whatssapp_string = 'whatsapp:'
    string_to = ''
    string_to.concat(whatssapp_string)
    string_to.concat(string_number)


    # this code is for SMS
    # message = @client.messages.create(
    #   :from => from,
    #   :to => number,
    #   :body => 'test twillio SMS'
    # )

    # this code is for Whatsapp message
    message = @client.messages.create(
      body: "Hallo Saudara #{name}, ini adalah pesan whatsapp yg dikirm dari twillio untuk testing",
      from: 'whatsapp:+14155238886',
      to: string_to
    )

  end
end

