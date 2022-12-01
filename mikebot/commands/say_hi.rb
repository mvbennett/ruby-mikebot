module Mikebot
  module Commands
    class SayHi < SlackRubyBot::Commands::Base
      command 'say_hi' do |client, data, _match|
        client.say(channel: data.channel, text: HiText.say_hi)
      end

      command /\w*\scoffee\s\w*/i do |client, data, _match|
        client.say(channel: data.channel, text: "I'm drinking Haiti coffee from Panther coffee.")
      end
    end
  end
end

class HiText
  def self.say_hi
    "Hi this is your mikebot, how may I help you?"
  end
end
