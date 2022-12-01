module Mikebot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Mikes Bot'
      desc 'A silly bot made for fun'

      command :say_hi do
        title 'say_hi'
        desc 'It says hi.'
        long_desc 'It says hi.'
      end

      command :coffee do
        title 'coffee'
        desc 'learn about my current coffee'
        long_desc 'Write coffee in any part of the sentence to the bot and it will tell you what coffee Ive been drinking'
      end
    end
  end
end
