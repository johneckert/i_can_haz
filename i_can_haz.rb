# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require 'dotenv/load'
# require 'sinatra'
require 'rest-client'


class I_Can_Haz
  def self.sendText to_number
    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID_TWILIO'], ENV['AUTH_TOKEN_TWILIO'])

    from = '+18628814509' # Your Twilio number
    to = to_number # Your mobile phone number
    body = self.getGif

    client.messages.create(
    from: from,
    to: to,
    body: body
    )
  end

  private

  def self.getGif
    #https://api.giphy.com/v1/gifs/random?api_key=SOj8rHUYD5nxkuuRILMhArC3zK3kr5jj&tag=cat&rating=G
    response = RestClient::Request.execute method: :get, url: 'https://api.giphy.com/v1/gifs/random?api_key=SOj8rHUYD5nxkuuRILMhArC3zK3kr5jj&tag=cat&rating=G'
    json = JSON.parse(response)
    json['data']['url']
  end
end

#TODO: make current code into a send method
#TODO: crete a get cat gif helper method.
#TODO: call it and place gif in body of text
#TODO: create basic page to enter phone number that executes this with to number as entered number
# I_Can_Haz.getGif
I_Can_Haz.sendText '+19177533500'

######SINATRA ROUTES########

# get '/' do
#
# end
#
# post '/' do
#   @to = params['to']
#   sendText @to
# end
