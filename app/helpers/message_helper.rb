module MessageHelper
  def send_message(recipient, message)
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    @client.account.sms.messages.create(:body => message,
                                        :to => recipient,
                                        :from => ENV['TWILIO_SMS_FROM_NUMBER'])
  end
end