require('rspec')
require('parcels')

describe(Parcel) do
  describe("#volume") do
    it("calculates the volume of a parcel based on length, width, and depth") do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.volume()).to(eq(60))
    end
  end

  describe("#cost_to_ship") do
    it("calculates the cost to ship based on the parcels' volume") do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.cost_to_ship("ground", 10)).to(eq(600))
    end

    it("calculates cost to ship based on speed of delivery") do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.cost_to_ship("next day", 10)).to(eq(1200))
    end

    it("calculates the cost to ship based on distance") do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.cost_to_ship("ground", 10)).to(eq(600))
    end
  end
end
