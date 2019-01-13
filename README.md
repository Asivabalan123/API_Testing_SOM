# API_Testing_SOM

Before using any service:

This project requires a number of gems to be installed, which are included in the gemfile for convenience. Please run 'gem install bundle' and they will be installed for you.

The following gems needs to be installed:
gem 'httparty'
gem 'json'
gem 'rspec'

HTTParty gem was required to be able to make the get request to get information from the API

JSON gem was required as JSON data was parsed with JSON GEM into a hash, and then extracted the relevant information.

Rspec gem is required to run the tests.

You can create an account to access the API at https://postcodes.io/docs'.

This was a testing framework that tested randomly selected postcodes singularly and multiply. An API is a set of features and functions with access to data.

API can be tested to ensure that all the data is valid and tests will pass.

Tests included ensuring all hash key values had the right type format such as a string, integer or array. Tests to ensure some key values were specific for example a status message of 200 had to always be printed to ensure that the postcode is valid any other number would mean an invalid postcode (401).

When using the postcode API, the space in the middle of a 7 length long postcode was included in the length, so the method to get the length of the postcode used a gsub feature. I used gsub!(/\s/,'') to ensure that the space was not replaced with an empty space so they would not be included in the length and the test for a postcode to be between 5 and 7 inclusive would pass.

To run the tests: Clone the repository, go into your Git Bash and into file where it is saved under and run simply run Rspec.
