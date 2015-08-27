require 'sinatra'
require "sinatra/json"
require 'sinatra/reloader' if development?
require './lib/compliment_retriever'
require './lib/dictionary_checker'
require 'json'
require 'pry'

get '/testing' do
  content_type :json
  timer_start   = Time.now

  compliment           = ComplimentRetriever.new.get_compliment

  if compliment == :service_down
    return JSON.pretty_generate({error: "Oh no! http://emergencycompliment.com/ appears to be down right now"})
  end
end
