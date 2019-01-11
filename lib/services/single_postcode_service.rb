require 'httparty'
require 'json'


class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_status_code
   @single_postcode_data['status']
  end

  def get_results
   @single_postcode_data['result']
  end

  def get_postcode
   @single_postcode_data["result"]["postcode"].gsub!(/\s/,'')
  end

  def get_quality_integer
    @single_postcode_data["result"]["quality"]
  end

  def get_ordnance_survery_eastings
    @single_postcode_data["result"]["eastings"]
  end

  def get_ordnance_survery_northings
    @single_postcode_data["result"]["northings"]
  end

  def get_four_constituent_countrys
    @single_postcode_data["result"]["country"]
  end

  def get_NHS_authroity
    @single_postcode_data["result"]["nhs_ha"]
  end

  def get_longitude_value
    @single_postcode_data["result"]["longitude"]
  end

  def get_latitude_value
    @single_postcode_data["result"]["latitude"]
  end

  def get_parliamentry_constituency
    @single_postcode_data["result"]["parliamentary_constituency"]
  end

  def get_european_electoral_region
    @single_postcode_data["result"]["european_electoral_region"]
  end

  def get_primary_care_trust
    @single_postcode_data["result"]["primary_care_trust"]
  end

  def get_region
    @single_postcode_data["result"]["region"]
  end

  def get_parish
    @single_postcode_data["result"]["parish"]
  end

  def get_admin_district
    @single_postcode_data["result"]["codes"]["admin_district"]
  end

  def get_incode
    @single_postcode_data["result"]["incode"]
  end

end
