require 'httparty'
require 'json'


class MultiplePostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcodes(postcodes_array)
    @multiple_postcodes_data = JSON.parse(self.class.post('/postcodes', body: {"postcodes" => postcodes_array}).body)
  end

  def get_status_code
    @multiple_postcodes_data['status']
  end

  def get_first_query
    @multiple_postcodes_data["result"][0]["query"]
  end

  def get_second_query
    @multiple_postcodes_data["result"][1]["query"]
  end

  def get_quality
    @multiple_postcodes_data["result"][0]["result"]["quality"]
  end

  def get_eastings
    @multiple_postcodes_data["result"][0]["result"]["eastings"]
  end


end
