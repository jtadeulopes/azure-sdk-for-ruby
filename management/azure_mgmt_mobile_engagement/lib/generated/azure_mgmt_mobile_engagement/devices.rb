# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  #
  # Microsoft Azure Mobile Engagement REST APIs.
  #
  class Devices
    include Azure::ARM::MobileEngagement::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Devices class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EngagementManagementClient] reference to the EngagementManagementClient
    attr_reader :client

    #
    # Query the information associated to the devices running an application.
    #
    # @param top [Integer] Number of devices to return with each call. Defaults to
    # 100 and cannot return more. Passing a greater value is ignored. The response
    # contains a `nextLink` property describing the URI path to get the next page
    # of results if not all results could be returned at once.
    # @param select [String] By default all `meta` and `appInfo` properties are
    # returned, this property is used to restrict the output to the desired
    # properties. It also excludes all devices from the output that have none of
    # the selected properties. In other terms, only devices having at least one of
    # the selected property being set is part of the results. Examples: -
    # `$select=appInfo` : select all devices having at least 1 appInfo, return them
    # all and don’t return any meta property. - `$select=meta` : return only meta
    # properties in the output. - `$select=appInfo,meta/firstSeen,meta/lastSeen` :
    # return all `appInfo`, plus meta object containing only firstSeen and lastSeen
    # properties. The format is thus a comma separated list of properties to
    # select. Use `appInfo` to select all appInfo properties, `meta` to select all
    # meta properties. Use `appInfo/{key}` and `meta/{key}` to select specific
    # appInfo and meta properties.
    # @param filter [String] Filter can be used to reduce the number of results.
    # Filter is a boolean expression that can look like the following examples: *
    # `$filter=deviceId gt 'abcdef0123456789abcdef0123456789'` *
    # `$filter=lastModified le 1447284263690L` * `$filter=(deviceId ge
    # 'abcdef0123456789abcdef0123456789') and (deviceId lt
    # 'bacdef0123456789abcdef0123456789') and (lastModified gt 1447284263690L)` The
    # first example is used automatically for paging when returning the `nextLink`
    # property. The filter expression is a combination of checks on some properties
    # that can be compared to their value. The available operators are: * `gt`  :
    # greater than * `ge`  : greater than or equals * `lt`  : less than * `le`  :
    # less than or equals * `and` : to add multiple checks (all checks must pass),
    # optional parentheses can be used. The properties that can be used in the
    # expression are the following: * `deviceId {operator} '{deviceIdValue}'` : a
    # lexicographical comparison is made on the deviceId value, use single quotes
    # for the value. * `lastModified {operator} {number}L` : returns only meta
    # properties or appInfo properties whose last value modification timestamp
    # compared to the specified value is matching (value is milliseconds since
    # January 1st, 1970 UTC). Please note the `L` character after the number of
    # milliseconds, its required when the number of milliseconds exceeds `2^31 - 1`
    # (which is always the case for recent timestamps). Using `lastModified`
    # excludes all devices from the output that have no property matching the
    # timestamp criteria, like `$select`. Please note that the internal value of
    # `lastModified` timestamp for a given property is never part of the results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DeviceQueryResult>] operation results.
    #
    def list(top = nil, select = nil, filter = nil, custom_headers = nil)
      first_page = list_as_lazy(top, select, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param top [Integer] Number of devices to return with each call. Defaults to
    # 100 and cannot return more. Passing a greater value is ignored. The response
    # contains a `nextLink` property describing the URI path to get the next page
    # of results if not all results could be returned at once.
    # @param select [String] By default all `meta` and `appInfo` properties are
    # returned, this property is used to restrict the output to the desired
    # properties. It also excludes all devices from the output that have none of
    # the selected properties. In other terms, only devices having at least one of
    # the selected property being set is part of the results. Examples: -
    # `$select=appInfo` : select all devices having at least 1 appInfo, return them
    # all and don’t return any meta property. - `$select=meta` : return only meta
    # properties in the output. - `$select=appInfo,meta/firstSeen,meta/lastSeen` :
    # return all `appInfo`, plus meta object containing only firstSeen and lastSeen
    # properties. The format is thus a comma separated list of properties to
    # select. Use `appInfo` to select all appInfo properties, `meta` to select all
    # meta properties. Use `appInfo/{key}` and `meta/{key}` to select specific
    # appInfo and meta properties.
    # @param filter [String] Filter can be used to reduce the number of results.
    # Filter is a boolean expression that can look like the following examples: *
    # `$filter=deviceId gt 'abcdef0123456789abcdef0123456789'` *
    # `$filter=lastModified le 1447284263690L` * `$filter=(deviceId ge
    # 'abcdef0123456789abcdef0123456789') and (deviceId lt
    # 'bacdef0123456789abcdef0123456789') and (lastModified gt 1447284263690L)` The
    # first example is used automatically for paging when returning the `nextLink`
    # property. The filter expression is a combination of checks on some properties
    # that can be compared to their value. The available operators are: * `gt`  :
    # greater than * `ge`  : greater than or equals * `lt`  : less than * `le`  :
    # less than or equals * `and` : to add multiple checks (all checks must pass),
    # optional parentheses can be used. The properties that can be used in the
    # expression are the following: * `deviceId {operator} '{deviceIdValue}'` : a
    # lexicographical comparison is made on the deviceId value, use single quotes
    # for the value. * `lastModified {operator} {number}L` : returns only meta
    # properties or appInfo properties whose last value modification timestamp
    # compared to the specified value is matching (value is milliseconds since
    # January 1st, 1970 UTC). Please note the `L` character after the number of
    # milliseconds, its required when the number of milliseconds exceeds `2^31 - 1`
    # (which is always the case for recent timestamps). Using `lastModified`
    # excludes all devices from the output that have no property matching the
    # timestamp criteria, like `$select`. Please note that the internal value of
    # `lastModified` timestamp for a given property is never part of the results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(top = nil, select = nil, filter = nil, custom_headers = nil)
      list_async(top, select, filter, custom_headers).value!
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param top [Integer] Number of devices to return with each call. Defaults to
    # 100 and cannot return more. Passing a greater value is ignored. The response
    # contains a `nextLink` property describing the URI path to get the next page
    # of results if not all results could be returned at once.
    # @param select [String] By default all `meta` and `appInfo` properties are
    # returned, this property is used to restrict the output to the desired
    # properties. It also excludes all devices from the output that have none of
    # the selected properties. In other terms, only devices having at least one of
    # the selected property being set is part of the results. Examples: -
    # `$select=appInfo` : select all devices having at least 1 appInfo, return them
    # all and don’t return any meta property. - `$select=meta` : return only meta
    # properties in the output. - `$select=appInfo,meta/firstSeen,meta/lastSeen` :
    # return all `appInfo`, plus meta object containing only firstSeen and lastSeen
    # properties. The format is thus a comma separated list of properties to
    # select. Use `appInfo` to select all appInfo properties, `meta` to select all
    # meta properties. Use `appInfo/{key}` and `meta/{key}` to select specific
    # appInfo and meta properties.
    # @param filter [String] Filter can be used to reduce the number of results.
    # Filter is a boolean expression that can look like the following examples: *
    # `$filter=deviceId gt 'abcdef0123456789abcdef0123456789'` *
    # `$filter=lastModified le 1447284263690L` * `$filter=(deviceId ge
    # 'abcdef0123456789abcdef0123456789') and (deviceId lt
    # 'bacdef0123456789abcdef0123456789') and (lastModified gt 1447284263690L)` The
    # first example is used automatically for paging when returning the `nextLink`
    # property. The filter expression is a combination of checks on some properties
    # that can be compared to their value. The available operators are: * `gt`  :
    # greater than * `ge`  : greater than or equals * `lt`  : less than * `le`  :
    # less than or equals * `and` : to add multiple checks (all checks must pass),
    # optional parentheses can be used. The properties that can be used in the
    # expression are the following: * `deviceId {operator} '{deviceIdValue}'` : a
    # lexicographical comparison is made on the deviceId value, use single quotes
    # for the value. * `lastModified {operator} {number}L` : returns only meta
    # properties or appInfo properties whose last value modification timestamp
    # compared to the specified value is matching (value is milliseconds since
    # January 1st, 1970 UTC). Please note the `L` character after the number of
    # milliseconds, its required when the number of milliseconds exceeds `2^31 - 1`
    # (which is always the case for recent timestamps). Using `lastModified`
    # excludes all devices from the output that have no property matching the
    # timestamp criteria, like `$select`. Please note that the internal value of
    # `lastModified` timestamp for a given property is never part of the results.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(top = nil, select = nil, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$select' => select,'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = DevicesQueryResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get the information associated to a device running an application.
    #
    # @param device_id [String] Device identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Device] operation results.
    #
    def get_by_device_id(device_id, custom_headers = nil)
      response = get_by_device_id_async(device_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the information associated to a device running an application.
    #
    # @param device_id [String] Device identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_device_id_with_http_info(device_id, custom_headers = nil)
      get_by_device_id_async(device_id, custom_headers).value!
    end

    #
    # Get the information associated to a device running an application.
    #
    # @param device_id [String] Device identifier.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_device_id_async(device_id, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'device_id is nil' if device_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices/{deviceId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name,'deviceId' => device_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Device.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get the information associated to a device running an application using the
    # user identifier.
    #
    # @param user_id [String] User identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Device] operation results.
    #
    def get_by_user_id(user_id, custom_headers = nil)
      response = get_by_user_id_async(user_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the information associated to a device running an application using the
    # user identifier.
    #
    # @param user_id [String] User identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_user_id_with_http_info(user_id, custom_headers = nil)
      get_by_user_id_async(user_id, custom_headers).value!
    end

    #
    # Get the information associated to a device running an application using the
    # user identifier.
    #
    # @param user_id [String] User identifier.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_user_id_async(user_id, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'user_id is nil' if user_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/users/{userId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name,'userId' => user_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Device.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update the tags registered for a set of devices running an application.
    # Updates are performed asynchronously, meaning that a few seconds are needed
    # before the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DeviceTagsResult] operation results.
    #
    def tag_by_device_id(parameters, custom_headers = nil)
      response = tag_by_device_id_async(parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update the tags registered for a set of devices running an application.
    # Updates are performed asynchronously, meaning that a few seconds are needed
    # before the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def tag_by_device_id_with_http_info(parameters, custom_headers = nil)
      tag_by_device_id_async(parameters, custom_headers).value!
    end

    #
    # Update the tags registered for a set of devices running an application.
    # Updates are performed asynchronously, meaning that a few seconds are needed
    # before the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def tag_by_device_id_async(parameters, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = DeviceTagsParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices/tag'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = DeviceTagsResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update the tags registered for a set of users running an application. Updates
    # are performed asynchronously, meaning that a few seconds are needed before
    # the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DeviceTagsResult] operation results.
    #
    def tag_by_user_id(parameters, custom_headers = nil)
      response = tag_by_user_id_async(parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update the tags registered for a set of users running an application. Updates
    # are performed asynchronously, meaning that a few seconds are needed before
    # the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def tag_by_user_id_with_http_info(parameters, custom_headers = nil)
      tag_by_user_id_async(parameters, custom_headers).value!
    end

    #
    # Update the tags registered for a set of users running an application. Updates
    # are performed asynchronously, meaning that a few seconds are needed before
    # the modifications appear in the results of the Get device command.
    # 
    #
    # @param parameters [DeviceTagsParameters]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def tag_by_user_id_async(parameters, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = DeviceTagsParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/users/tag'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = DeviceTagsResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DevicesQueryResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = DevicesQueryResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Query the information associated to the devices running an application.
    #
    # @param top [Integer] Number of devices to return with each call. Defaults to
    # 100 and cannot return more. Passing a greater value is ignored. The response
    # contains a `nextLink` property describing the URI path to get the next page
    # of results if not all results could be returned at once.
    # @param select [String] By default all `meta` and `appInfo` properties are
    # returned, this property is used to restrict the output to the desired
    # properties. It also excludes all devices from the output that have none of
    # the selected properties. In other terms, only devices having at least one of
    # the selected property being set is part of the results. Examples: -
    # `$select=appInfo` : select all devices having at least 1 appInfo, return them
    # all and don’t return any meta property. - `$select=meta` : return only meta
    # properties in the output. - `$select=appInfo,meta/firstSeen,meta/lastSeen` :
    # return all `appInfo`, plus meta object containing only firstSeen and lastSeen
    # properties. The format is thus a comma separated list of properties to
    # select. Use `appInfo` to select all appInfo properties, `meta` to select all
    # meta properties. Use `appInfo/{key}` and `meta/{key}` to select specific
    # appInfo and meta properties.
    # @param filter [String] Filter can be used to reduce the number of results.
    # Filter is a boolean expression that can look like the following examples: *
    # `$filter=deviceId gt 'abcdef0123456789abcdef0123456789'` *
    # `$filter=lastModified le 1447284263690L` * `$filter=(deviceId ge
    # 'abcdef0123456789abcdef0123456789') and (deviceId lt
    # 'bacdef0123456789abcdef0123456789') and (lastModified gt 1447284263690L)` The
    # first example is used automatically for paging when returning the `nextLink`
    # property. The filter expression is a combination of checks on some properties
    # that can be compared to their value. The available operators are: * `gt`  :
    # greater than * `ge`  : greater than or equals * `lt`  : less than * `le`  :
    # less than or equals * `and` : to add multiple checks (all checks must pass),
    # optional parentheses can be used. The properties that can be used in the
    # expression are the following: * `deviceId {operator} '{deviceIdValue}'` : a
    # lexicographical comparison is made on the deviceId value, use single quotes
    # for the value. * `lastModified {operator} {number}L` : returns only meta
    # properties or appInfo properties whose last value modification timestamp
    # compared to the specified value is matching (value is milliseconds since
    # January 1st, 1970 UTC). Please note the `L` character after the number of
    # milliseconds, its required when the number of milliseconds exceeds `2^31 - 1`
    # (which is always the case for recent timestamps). Using `lastModified`
    # excludes all devices from the output that have no property matching the
    # timestamp criteria, like `$select`. Please note that the internal value of
    # `lastModified` timestamp for a given property is never part of the results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DevicesQueryResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(top = nil, select = nil, filter = nil, custom_headers = nil)
      response = list_async(top, select, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
