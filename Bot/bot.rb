#!/usr/bin/env ruby
require 'yaml'
require_relative 'wordplay'

# A basic implementation of a chatterbot
class Bot
  attr_reader :name
  
  # Initializes the bot object, loads in external YAML data
  # file and sets the bot's name. Raises an exception if
  # the data loading process fails.
  def initialize(options)
    @name = options[:name] || "Unnamed Bot"
    begin
      @data = YAML.load(File.read(options[:data_file]))
    rescue
      raise "Can't load bot data"
    end
  end
  
  # Returns a random greeting as specified in the bot's data file
  def greeting
    random_response :greeting
  end
  
  # Returns a random greeting as specified in the bot's data file
  def farewell
    random_response :farewell
  end
  
  # Response to input text as given by a user
  def response_to(input)
    prepared_input = preprocess(input).downcase
    sentence = best_sentence(prepared_input)
    responses = possible_responses(sentence)
    responses[rand(responses.length)]
  end
  
  private
  
  # Choose a random response phrase from the :responses has and substitutes metadata into the phrase
  def random_response(key)
    random_index = rand(@data[:responses][key].length)
    @data[:responses][key][random_index].gsub(/\[name\]/, @name)
  end
  
  # Performs preprocessing tasks upon all input to the bot
  def preprocess(input)
    perform_substitutions input
  end
  
  # Substitutes words and phrases on supplied input as dictated by the bot's :presubs data
  def perform_substitutions(input)
    @data[:presubs].each { |s| input.gsub!(s[0], s[1]) }
    input
  end
  
  # Using the single word keys from :responses, we search for the sentence that uses the most of them,
  # as it's likely to be the 'best' sentence to parse
  def best_sentence(input)
    hot_words = @data[:responses].keys.select do |k|
      k.class == String && k =~ /^\w+$/
    end
    
    WordPlay.best_sentence(input.sentences, hot_words)
  end
  
  
  # Using a supplied sentence, go through the bot's :responses
  # data set and collect together all phrases that could be
  # used as responses
  def possible_responses(sentence)
    responses = []
    
    # Find all patterns to try to match against
    @data[:responses].keys.each do |pattern|
      next unless pattern.is_a?(String)
      
      # For each pattern, see if the supplied sentence contains
      # a match. Remove substitution symbols (*) before checking.
      # Push all responses to the responses array.
      if sentence.match('\b' + pattern.gsub(/\*/, '') + '\b')
        # If the pattern contains substitution placeholders,
        # perform the substitution
        if pattern.include?('*')
          responses << @data[:responses][pattern].collect do |phrase|
            # First, erase everything before the placeholder
            # leaving everything after it
            matching_section = sentence.sub(/^.*#{pattern}\s+/, '')
            
            # Then substitute the text after the placeholder, with
            # the pronouns switched
            phrase.sub('*', WordPlay.switch_pronouns(matching_section))
          end
        else
          # No placeholders? Just add the phrases to the array
          responses << @data[:responses][pattern]
        end
      end
    end
    
    # If there were no matches, add the default ones
    responses << @data[:responses][:default] if responses.empty?
    
    # Flatten the blocks of responses to a flat array
    responses.flatten
  end
end

bot = Bot.new(:name => "XXX", :data_file => "bot_data")
bot.response_to("I like you")