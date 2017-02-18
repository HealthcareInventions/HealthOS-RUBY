# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class AllManufacturersResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :manufacturer_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["manufacturer_id"] = "manufacturer_id"
        @hash["name"] = "name"
      end
      @hash
    end

    def initialize(manufacturer_id = nil,
                   name = nil)
      @manufacturer_id = manufacturer_id
      @name = name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        manufacturer_id = hash["manufacturer_id"]
        name = hash["name"]

        # Create object from extracted values
        AllManufacturersResponse.new(manufacturer_id,
                                     name)
      end
    end
  end
end