json.array!(@meters) do |meter|
  json.extract! meter, :status_id, :location_id, :serialno, :vtfactor, :ctfactor
  json.url meter_url(meter, format: :json)
end