# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class HealthOSClient
    # Singleton access to medicines controller
    # @return [MedicinesController] Returns the controller instance
    def medicines
      MedicinesController.instance
    end

    # Singleton access to lab_tests controller
    # @return [LabTestsController] Returns the controller instance
    def lab_tests
      LabTestsController.instance
    end

    # Singleton access to generics controller
    # @return [GenericsController] Returns the controller instance
    def generics
      GenericsController.instance
    end

    # Singleton access to food controller
    # @return [FoodController] Returns the controller instance
    def food
      FoodController.instance
    end

    # Singleton access to exercises controller
    # @return [ExercisesController] Returns the controller instance
    def exercises
      ExercisesController.instance
    end

    # Singleton access to drug_interactions controller
    # @return [DrugInteractionsController] Returns the controller instance
    def drug_interactions
      DrugInteractionsController.instance
    end

    # Singleton access to diseases controller
    # @return [DiseasesController] Returns the controller instance
    def diseases
      DiseasesController.instance
    end

    # Singleton access to chat controller
    # @return [ChatController] Returns the controller instance
    def chat
      ChatController.instance
    end

    # Singleton access to autocomplete controller
    # @return [AutocompleteController] Returns the controller instance
    def autocomplete
      AutocompleteController.instance
    end

    # Singleton access to authentication controller
    # @return [AuthenticationController] Returns the controller instance
    def authentication
      AuthenticationController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(host: nil, o_auth_access_token: nil)
      Configuration.host = host if host
      Configuration.o_auth_access_token = o_auth_access_token if o_auth_access_token
    end
  end
end