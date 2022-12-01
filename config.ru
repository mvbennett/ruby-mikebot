$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
require 'mikebot'
Dotenv.load

Mikebot::Bot.run
