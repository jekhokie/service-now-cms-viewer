require "rest-client"

module ServiceNowApi
  # make a request for a table
  def self.table_request(table_name, query_params = "")
    ServiceNowApi.path_request("api/now/v1/table/#{table_name}?#{query_params}")
  end

  # make a request for a table record
  def self.table_record_request(table_name, record_sys_id, query_params = "")
    ServiceNowApi.path_request("api/now/v1/table/#{table_name}/#{record_sys_id}?#{query_params}")
  end

  private

  # make a generic path-based request, relying on the settings to define the protocol, host and port
  def self.path_request(path)
    sn_settings = Settings.service_now_endpoint
    self.make_uri_request("#{sn_settings.protocol}://#{sn_settings.host}:#{sn_settings.port}/#{path}")
  end

  # make a generic URI request, which includes the protocol, host and port along with the path (fully-qualified)
  def self.make_uri_request(uri)
    sn_settings = Settings.service_now_endpoint
    get_request = RestClient::Resource.new(uri, :user => sn_settings.username, :password => sn_settings.password)

    response = get_request.get(:verify_ssl =>  OpenSSL::SSL::VERIFY_NONE,
                               :accept     => :json,
                               :content    => :json)

    begin
      response_json = JSON.parse(response.body)
      return response_json["result"]
    rescue
      return response.body
    end
  end
end
