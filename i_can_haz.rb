# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require 'dotenv/load'

account_sid = ENV['ACCOUNT_SID_TWILIO']
auth_token = ENV['AUTH_TOKEN_TWILIO']

client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+18628814509' # Your Twilio number
to = '+19177533500' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)
