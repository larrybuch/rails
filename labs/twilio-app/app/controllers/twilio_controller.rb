class TwilioController < ApplicationController
  def new

  end

  def create
    from_phone = "+19177463330"
    to_phone = params[:phone]
    txt = params[:textmessage]

    @client = Twilio::REST::Client.new(TW_SID, TW_TOK)
    @message = @client.account.sms.messages.create({:from => from_phone, :to => to_phone, :body => txt})
    @account = @client.account

    #2.times do
      #@call = @account.calls.create({:from => from_phone, :to => to_phone, :url => 'http://www.larrybuch.com'})
    #end

    redirect_to twilio_path
  end
end