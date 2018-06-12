# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'sinatra'
require 'twilio-ruby'

get '/' do
  content_type 'text/xml'

  Twilio::TwiML::VoiceResponse.new do | response |
    response.say('Hello World')
  end.to_s
end
