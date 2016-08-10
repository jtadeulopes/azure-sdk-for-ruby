# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Catalog
  #
  # A service client - single point of access to the REST API.
  #
  class DataLakeAnalyticsCatalogManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_reader :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets the DNS suffix used as the base for all Azure Data
    # Lake Analytics Catalog service requests.
    attr_accessor :adla_catalog_dns_suffix

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return Subscription credentials which uniquely identify client
    # subscription.
    attr_accessor :credentials

    # @return [Catalog] catalog
    attr_reader :catalog

    #
    # Creates initializes a new instance of the DataLakeAnalyticsCatalogManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials, options = nil)
      super(credentials, options)
      @base_url = 'https://{accountName}.{adlaCatalogDnsSuffix}'

      fail ArgumentError, 'credentials is nil' if credentials.nil?
      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials)
      @credentials = credentials

      @catalog = Catalog.new(self)
      @api_version = '2015-10-01-preview'
      @adla_catalog_dns_suffix = 'azuredatalakeanalytics.net'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
    end

  end
end
