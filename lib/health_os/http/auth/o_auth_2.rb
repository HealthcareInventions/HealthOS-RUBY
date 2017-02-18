# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class OAuth2
    # Add OAuth2 authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will be added.
    def self.apply(http_request)
      token = Configuration.o_auth_access_token
      header_value = "Bearer #{token}"
      http_request.headers["Authorization"] = header_value
    end
  end
end