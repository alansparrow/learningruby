#!/usr/bin/env ruby
require 'net/http'

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  
  case response
  when Net::HTTPSuccess
    return response.body
  when Net::HTTPRedirection
    puts "This is redirect link: " + response['Location'].to_s
    return get_web_document(response['Location'])
  when Net::HTTPNotFound
    puts "File not found"
  when Net::HTTPForbidden
    puts "Forbidden area!"
  else
    return "Fuck you!"
  end
end

puts get_web_document('http://www.rubyinside.com/test.txt')
puts get_web_document('http://www.rubyinside.com/non-existent')
puts get_web_document('http://www.rubyinside.com/redirect-test')
