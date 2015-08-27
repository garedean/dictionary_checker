require 'capybara'
require 'capybara/poltergeist'

class ComplimentRetriever
  include Capybara::DSL

  def initialize
    Capybara.default_driver = :poltergeist
  end

  # returns string
  def get_compliment
    begin
      visit "http://emergencycompliment.com/"
      find(".compliment").text
    rescue
      :service_down
    end
  end
end
