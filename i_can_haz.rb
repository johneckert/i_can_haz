# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require 'dotenv/load'




client = Twilio::REST::Client.new(ENV['ACCOUNT_SID_TWILIO'], ENV['AUTH_TOKEN_TWILIO'])

from = '+18628814509' # Your Twilio number
to = '+19177533500' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)

#TODO: make current code into a send method
#TODO: crete a get cat gif helper method.
#TODO: call it and place gif in body of text
#TODO: create basic page to enter phone number that executes this with to number as entered number
