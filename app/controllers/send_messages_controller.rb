class SendMessagesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def send_text
    service = MessengerService.new
    service.send_sms(params[:phone], params[:name])
    redirect_to :back
  end

  def phone_params
    params.require(:phone).permit(
      :phone,
      :name
    )
  end

  
end
