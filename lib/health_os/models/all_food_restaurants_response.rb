# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class AllFoodRestaurantsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :restaurant_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_restaurant_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["restaurant_name"] = "restaurant_name"
        @hash["food_restaurant_id"] = "food_restaurant_id"
      end
      @hash
    end

    def initialize(restaurant_name = nil,
                   food_restaurant_id = nil)
      @restaurant_name = restaurant_name
      @food_restaurant_id = food_restaurant_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        restaurant_name = hash["restaurant_name"]
        food_restaurant_id = hash["food_restaurant_id"]

        # Create object from extracted values
        AllFoodRestaurantsResponse.new(restaurant_name,
                                       food_restaurant_id)
      end
    end
  end
end
