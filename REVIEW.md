## Backend Programming Test
# =====================================================================

Task: this assignment is to build a JSON web service that will pull a compliment from http://emergencycompliment.com,
and return it and separately list any words not found in your system's dictionary.

Review:
-----------------------------------------------------------------------
I decided to build the project with Sinatra since I have some experience with it and like it a lot. I started off using the popular Ruby REST Client gem with another gem, Nokogiri for parsing HTML and retrieving the compliment. I had code working that retrieved content from the page with a big catch: it was grabbing the data immediately upon page load before JS had populated the compliment text. The compliment I was retrieving was 'loading...'.

I decided to go another route: using Capybara and Poltergeist. Since Capybara waits until the page content is loaded before actions, it worked perfectly.

I moved on to working with my computer's dictionary. I used the Ruby File.open method, then transformed the File object to an array of downcased strings. I created #get_non_words that took in the compliment as a string, then two supporting methods to help with logic: String#to_standardized_array and DictionaryChecker#in_dictionary?.

From there, I completed the logic in app.rb that returned non-words in JSON format.

I noticed after manual tests that a lot of plural nouns showed up as non-words, so I decided to check the initial set of non-words in their singularized form (courtesty of ActiveSupport). This lead to a more accurate output practically speaking. I also spent a lot of time fine tuning the REGEX for acting on punctuation and special cases like dashes, forward slashes, and periods in the returned compliment string.


Frameworks:
-----------------------------------------------------------------------
Capybara (with Poltergeist and PhantomJS headless browser), the ActiveSupport gem for it's #singularize function.

Lessons
-----------------------------------------------------------------------
For scraping data on web pages, Capybara proved to be a great choice: it has an intuitive DSL and waits for content to load. I didn't have much experience with JSON going into the project, so it was nice getting to use it. I found that there were a lot of special cases with the returned compliment string that I didn't initially account for. I used REGEX to account for those cases and it handles them fairly well. There are still a lot of words that get deemed 'non-words' due to using past/future tenses and variations of words.
