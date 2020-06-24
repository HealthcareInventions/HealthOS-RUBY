# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class LabTestsController < BaseController
    @@instance = LabTestsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get labtest by id
    # @param [String] lab_test_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_lab_test(lab_test_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/lab_tests/{lab_test_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'lab_test_id' => lab_test_id
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

    # All Lab tests
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @return Mixed response from the API call
    def get_all_lab_tests(page, 
                          size)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/lab_tests'
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

    # Search a lab test by name
    # @param [String] lab_test_query Required parameter: Example: 
    # @return Mixed response from the API call
    def search_lab_tests(lab_test_query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/search/lab_tests/{lab_test_query}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'lab_test_query' => lab_test_query
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
