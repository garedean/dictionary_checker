require 'sinatra'
require "sinatra/json"
require 'sinatra/reloader' if development?
require './lib/compliment_retriever'
require './lib/dictionary_checker'
require './lib/ext/string'
require 'json'
require 'pry'

get '/testing' do
  content_type :json
  timer_start   = Time.now

  dictionary_checker   = DictionaryChecker.new
  compliment           = ComplimentRetriever.new.get_compliment

  if compliment == :service_down
    return JSON.pretty_generate({error: "Oh no! http://emergencycompliment.com/ appears to be down right now"})
  end

  unfound_words = dictionary_checker.get_non_words(compliment)

  timer_end     = Time.now
  elapsed_time  = timer_end - timer_start

  json = { compliment:    compliment,
           unfound_words: unfound_words,
           run_time:      elapsed_time }

  JSON.pretty_generate(json)
end
