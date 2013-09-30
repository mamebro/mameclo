require 'mameclo'
require 'thor'

module Mameclo
  class CLI < Thor
    desc "sing [word]", "まめまめまめまめまめぶろ♪"
    def sing(word)
      say(word, :red)
    end
  end
end
