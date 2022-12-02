module Mikebot
  module Commands
    class SayHi < SlackRubyBot::Commands::Base
      command 'say_hi' do |client, data, _match|
        client.say(channel: data.channel, text: Text.say_hi)
      end

      command /\w*\scoffee\s\w*/i do |client, data, _match|
        client.say(channel: data.channel, text: Text.coffee)
      end

      command 'american_name' do |client, data, _match|
        client.say(channel: data.channel, text: Text.american_name)
      end
    end
  end
end

class Text
  def self.say_hi
    "Hi this is your mikebot, how may I help you?"
  end

  def self.coffee
    "I'm drinking Haiti coffee from Panther coffee."
  end

  def self.american_name
    [
      'Sleve McDichael',
      'Onson Sweemy',
      'Darryl Archideld',
      'Anatoli Smorin',
      'Rey McScriff',
      'Todd Bonzalez',
      'Mike Sernandez'
    ].sample
  end
end
