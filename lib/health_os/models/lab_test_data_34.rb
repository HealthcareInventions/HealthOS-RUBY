# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class LabTestData34 < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :ordering_information

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :laboratory

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :test_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :specimen_types

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :container_types

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :collection_instructions

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :frequency

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["ordering_information"] = "Ordering information"
        @hash["laboratory"] = "Laboratory"
        @hash["test_code"] = "Test Code"
        @hash["specimen_types"] = "Specimen types"
        @hash["container_types"] = "Container types"
        @hash["collection_instructions"] = "Collection Instructions"
        @hash["frequency"] = "Frequency"
      end
      @hash
    end

    def initialize(ordering_information = nil,
                   laboratory = nil,
                   test_code = nil,
                   specimen_types = nil,
                   container_types = nil,
                   collection_instructions = nil,
                   frequency = nil)
      @ordering_information = ordering_information
      @laboratory = laboratory
      @test_code = test_code
      @specimen_types = specimen_types
      @container_types = container_types
      @collection_instructions = collection_instructions
      @frequency = frequency
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        ordering_information = hash["Ordering information"]
        laboratory = hash["Laboratory"]
        test_code = hash["Test Code"]
        specimen_types = hash["Specimen types"]
        container_types = hash["Container types"]
        collection_instructions = hash["Collection Instructions"]
        frequency = hash["Frequency"]

        # Create object from extracted values
        LabTestData34.new(ordering_information,
                          laboratory,
                          test_code,
                          specimen_types,
                          container_types,
                          collection_instructions,
                          frequency)
      end
    end
  end
end