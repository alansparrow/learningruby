#!/usr/bin/env ruby
require_relative 'bot'

bot = Bot.new(:name => ARGV[0], :data_file => ARGV[1])
user_lines = File.readlines(ARGV[2])
puts "#{bot.name} says: " + bot.greeting

user_lines.each do |line|
  puts "You say: " + line
  puts "#{bot.name} says: " + bot.response_to(line)
end
