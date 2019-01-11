describe MultiplePostcodesService do

#instantiate server
  before (:all) do
    @postcodes_array = ["OX49 5NU", "M32 0JG", "NE30 1DP"]
    @multiple_postcodes_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcodes_service.get_multiple_postcodes(@postcodes_array)
  end

    it 'should respond with a status message of 200' do
      expect(@multiple_postcodes_service.get_status_code).to eq 200
    end

    it "should return the first query as the first postcode in the response" do
      expect(@multiple_postcodes_service.get_first_query).to be_kind_of String
    end

    it "should return the second query as the first postcode in the response" do
      expect(@multiple_postcodes_service.get_second_query).to be_kind_of String
    end

    it "should return an integer value for quantity" do
      expect(@multiple_postcodes_service.get_quality).to be_kind_of Integer
    end

    it "should return an integer value for eastings" do
      expect(@multiple_postcodes_service.get_eastings).to be_kind_of Integer
    end

    it "should return an integer value for northings" do
      expect(@multiple_postcodes_service.get_northings).to be_kind_of Integer
    end

    it "should return a string for country" do
      expect(@multiple_postcodes_service.get_country).to be_kind_of String
    end

    it "should return a string for nhs_ha" do
      expect(@multiple_postcodes_service.get_nhs_ha).to be_kind_of String
    end

    it "should return a float value for longitude" do
      expect(@multiple_postcodes_service.get_longitude).to be_kind_of Float
    end

    it "should return a float value for latitude" do
      expect(@multiple_postcodes_service.get_latitude).to be_kind_of Float
    end

  end
