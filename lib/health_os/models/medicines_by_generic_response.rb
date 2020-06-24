# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class MedicinesByGenericResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :form

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :standard_units

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :package_form

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :manufacturer

    # TODO: Write general description for this method
    # @return [List of Constituent]
    attr_accessor :constituents

    # TODO: Write general description for this method
    # @return [Schedule]
    attr_accessor :schedule

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :medicine_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["name"] = "name"
        @hash["form"] = "form"
        @hash["standard_units"] = "standardUnits"
        @hash["package_form"] = "packageForm"
        @hash["price"] = "price"
        @hash["size"] = "size"
        @hash["manufacturer"] = "manufacturer"
        @hash["constituents"] = "constituents"
        @hash["schedule"] = "schedule"
        @hash["medicine_id"] = "medicine_id"
      end
      @hash
    end

    def initialize(name = nil,
                   form = nil,
                   standard_units = nil,
                   package_form = nil,
                   price = nil,
                   size = nil,
                   manufacturer = nil,
                   constituents = nil,
                   schedule = nil,
                   medicine_id = nil)
      @name = name
      @form = form
      @standard_units = standard_units
      @package_form = package_form
      @price = price
      @size = size
      @manufacturer = manufacturer
      @constituents = constituents
      @schedule = schedule
      @medicine_id = medicine_id
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        name = hash["name"]
        form = hash["form"]
        standard_units = hash["standardUnits"]
        package_form = hash["packageForm"]
        price = hash["price"]
        size = hash["size"]
        manufacturer = hash["manufacturer"]
        # Parameter is an array, so we need to iterate through it
        constituents = nil
        if hash["constituents"] != nil
          constituents = Array.new
          hash["constituents"].each{|structure| constituents << (Constituent.from_hash(structure) if structure)}
        end
        schedule = Schedule.from_hash(hash["schedule"]) if hash["schedule"]
        medicine_id = hash["medicine_id"]

        # Create object from extracted values
        MedicinesByGenericResponse.new(name,
                                       form,
                                       standard_units,
                                       package_form,
                                       price,
                                       size,
                                       manufacturer,
                                       constituents,
                                       schedule,
                                       medicine_id)
      end
    end
  end
end
