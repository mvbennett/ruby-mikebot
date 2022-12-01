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
    end
  end
end
