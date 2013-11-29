require 'mameclo'
require 'thor'
require 'faraday'
require 'json'

module Mameclo
  class CLI < Thor
    desc "entry [number]", "指定した番号のエントリーを表示します"
    def entry(number)
      conn = Faraday.new(:url => "http://www.mameblo.com/entries/#{number}.json")
      response = conn.get
      body = JSON.parse(response.body)
      say("title:\n" + body['title'] + "\n\n")
      say("content:\n" + body['content'])
    end
  end
end
