# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class SearchFoodItemsResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :calories

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_name

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :serving_qty

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :serving_unit

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_brand_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :food_item_id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :search_score

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["calories"] = "calories"
        @hash["item_name"] = "item_name"
        @hash["serving_qty"] = "serving_qty"
        @hash["serving_unit"] = "serving_unit"
        @hash["food_brand_id"] = "food_brand_id"
        @hash["food_item_id"] = "food_item_id"
        @hash["search_score"] = "search_score"
      end
      @hash
    end

    def initialize(calories = nil,
                   item_name = nil,
                   serving_qty = nil,
                   serving_unit = nil,
                   food_brand_id = nil,
                   food_item_id = nil,
                   search_score = nil)
      @calories = calories
      @item_name = item_name
      @serving_qty = serving_qty
      @serving_unit = serving_unit
      @food_brand_id = food_brand_id
      @food_item_id = food_item_id
      @search_score = search_score
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        calories = hash["calories"]
        item_name = hash["item_name"]
        serving_qty = hash["serving_qty"]
        serving_unit = hash["serving_unit"]
        food_brand_id = hash["food_brand_id"]
        food_item_id = hash["food_item_id"]
        search_score = hash["search_score"]

        # Create object from extracted values
        SearchFoodItemsResponse.new(calories,
                                    item_name,
                                    serving_qty,
                                    serving_unit,
                                    food_brand_id,
                                    food_item_id,
                                    search_score)
      end
    end
  end
end
