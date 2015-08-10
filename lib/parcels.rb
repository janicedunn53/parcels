class Parcel
  define_method(:initialize) do |length, width, depth|
    @length = length
    @width = width
    @depth = depth

  end

  define_method(:volume) do
    @total_volume = @length*@width*@depth
  end

  define_method(:cost_to_ship) do |delivery_type, distance|
    # @delivery_type = delivery_type
    speed_of_delivery = Hash.new()
    speed_of_delivery = {"ground" => 1, "next day" => 2}

    @total_cost = (@length*@width*@depth)*speed_of_delivery.fetch(delivery_type)*distance
  end
end
