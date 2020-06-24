# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class GenericsController < BaseController
    @@instance = GenericsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get a generic by id
    # @param [String] generic_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_generic(generic_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/generics/{generic_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'generic_id' => generic_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get medicines containing the generic
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @param [Boolean] exclusive Required parameter: Example: 
    # @param [String] generic_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_medicines_by_generic(page, 
                                 size, 
                                 exclusive, 
                                 generic_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/generics/{generic_id}/medicines'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'generic_id' => generic_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size,
        'exclusive' => exclusive
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # All generics
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @return Mixed response from the API call
    def get_all_generics(page, 
                         size)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/generics'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Search a generic by name
    # @param [String] generic_query Required parameter: Example: 
    # @return Mixed response from the API call
    def search_generics(generic_query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/search/medicines/generics/{generic_query}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'generic_query' => generic_query
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
