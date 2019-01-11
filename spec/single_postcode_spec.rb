
describe SinglePostcodeService do

#instantiate server
  before (:all) do
    @postcodesio = Postcodesio.new.single_postcode_service
    @postcodesio.get_single_postcode('B601JA')
  end

  it 'should respond with a status message of 200' do
    expect(@postcodesio.get_status_code).to eq 200
  end

  it 'should have a results hash' do
    expect(@postcodesio.get_results).to be_kind_of Hash
  end

  it "should return a postcode between 5-7 in length"  do
    expect(@postcodesio.get_postcode.length).to be_between(5,7).inclusive
  end

  it "should return an quality key integer between 1-9" do
    expect(@postcodesio.get_quality_integer).to be_between(1,9).inclusive
  end

  it "should return an ordnance survey eastings value as integer" do
    expect(@postcodesio.get_ordnance_survery_eastings).to be_kind_of Integer
  end

  it "should return an ordnance survey northings value as integer" do
    expect(@postcodesio.get_ordnance_survery_northings).to be_kind_of Integer
  end

  it "should return a country which is one of the four constituent countries of the UK" do
    expect(@postcodesio.get_four_constituent_countrys).to eq("England")| eq("Northern Ireland")| eq("Scotland")| eq("Wales")
  end

  it "should return a string value for NHS authority " do
    expect(@postcodesio.get_NHS_authroity).to be_kind_of String
  end

  it "should return a longitude float value" do
    expect(@postcodesio.get_longitude_value).to be_kind_of Float
  end

  it "should return a latitude float value" do
    expect(@postcodesio.get_latitude_value).to be_kind_of Float
  end

  it "should return a parliamentary constituency string" do
    expect(@postcodesio.get_parliamentry_constituency).to be_kind_of String
  end

  it "should return a european_electoral_region string" do
    expect(@postcodesio.get_european_electoral_region).to be_kind_of String
  end

  it "should return a primary_care_trust string" do
    expect(@postcodesio.get_primary_care_trust).to be_kind_of String
  end

  it "should return a region string" do
    expect(@postcodesio.get_region).to be_kind_of String
  end

  it "should return a parish string" do
    expect(@postcodesio.get_parish).to be_kind_of String
  end

  it "should return a admin_district string" do
    expect(@postcodesio.get_admin_district).to be_kind_of String
  end

  it "should return a incode string of three characters" do
    expect(@postcodesio.get_incode.length).to eq 3
  end

  it "should return a incode string of 3-4 characters" do
    expect(@postcodesio.get_incode.length).to be_between(3,4).inclusive
  end
  
 end
