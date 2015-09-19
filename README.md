# DictionaryChecker

## About
This project encompasses a few components. The 'ComplimentRetriever' class is used to scrape the website http://emergencycompliment.com and return a compliment. After the compliment is retrieved, if the user is running the script from a Unix-based machine, the computer's dictionary will be loaded along with all words in the dictionary. The script will then return and words in the compliment phrase that are NOT present in the computer's onboard dictionary.  

The current implementation is for running locally.

## Viewing output
In the terminal:
1. Navigate to the root of the DictionaryChecker directory
2. Run 'bundle install' if not done in the previous section
3. Run 'ruby app.rb' to start a local Sinatra server
4. Run 'curl http://localhost:4567/testing'

## Running automated tests
In the terminal:
1. Navigate to the root of the DictionaryChecker directory
2. Run 'bundle install'
3. Run 'rspec'
