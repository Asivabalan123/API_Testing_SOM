describe MultiplePostcodesService do

#instantiate server
  before (:all) do
    @postcodes_array = ['B601JA', 'SW155FB']
    @multiple_postcodes_service = Postcodesio.new.multiple_postcodes_service
    @multiple_postcodes_service.get_multiple_postcodes(@postcodes_array)
  end

  it 'should respond with a status message of 200' do
    expect(@multiple_postcodes_service.get_status_code).to eq 200
  end

end
