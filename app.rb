require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/parcels') do
  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  depth = params.fetch('depth').to_i
  delivery_type = params.fetch('delivery_type')
  distance = params.fetch('distance').to_i
  @parcels = Parcel.new(length, width, depth)
  @cost = @parcels.cost_to_ship(delivery_type, distance)
  erb(:parcels)
end
