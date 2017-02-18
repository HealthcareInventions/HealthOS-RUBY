# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class SearchFoodRestaurantsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :logo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_restaurant_id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :search_score

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["logo"] = "logo"
        @hash["name"] = "name"
        @hash["food_restaurant_id"] = "food_restaurant_id"
        @hash["search_score"] = "search_score"
      end
      @hash
    end

    def initialize(logo = nil,
                   name = nil,
                   food_restaurant_id = nil,
                   search_score = nil)
      @logo = logo
      @name = name
      @food_restaurant_id = food_restaurant_id
      @search_score = search_score
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        logo = hash["logo"]
        name = hash["name"]
        food_restaurant_id = hash["food_restaurant_id"]
        search_score = hash["search_score"]

        # Create object from extracted values
        SearchFoodRestaurantsResponse.new(logo,
                                          name,
                                          food_restaurant_id,
                                          search_score)
      end
    end
  end
end