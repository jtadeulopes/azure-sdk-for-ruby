# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  module Models
    #
    # Describes the usageAggregation.
    #
    class UsageAggregation

      include MsRestAzure

      # @return [String] Unique Id for the usage aggregate.
      attr_accessor :id

      # @return [String] Name of the usage aggregate.
      attr_accessor :name

      # @return [String] Type of the resource being returned.
      attr_accessor :type

      # @return The subscription identifier for the Azure user.
      attr_accessor :subscription_id

      # @return [String] Unique ID for the resource that was consumed (aka
      # ResourceID).
      attr_accessor :meter_id

      # @return [DateTime] UTC start time for the usage bucket to which this
      # usage aggregate belongs.
      attr_accessor :usage_start_time

      # @return [DateTime] UTC end time for the usage bucket to which this
      # usage aggregate belongs.
      attr_accessor :usage_end_time

      # @return The amount of the resource consumption that occurred in this
      # time frame.
      attr_accessor :quantity

      # @return [String] The unit in which the usage for this resource is being
      # counted, e.g. Hours, GB.
      attr_accessor :unit

      # @return [String] Friendly name of the resource being consumed.
      attr_accessor :meter_name

      # @return [String] Category of the consumed resource.
      attr_accessor :meter_category

      # @return [String] Sub-category of the consumed resource.
      attr_accessor :meter_sub_category

      # @return [String] Region of the meterId used for billing purposes
      attr_accessor :meter_region

      # @return [InfoField] Key-value pairs of instance details (legacy
      # format).
      attr_accessor :info_fields

      # @return [String] Key-value pairs of instance details represented as a
      # string.
      attr_accessor :instance_data


      #
      # Mapper for UsageAggregation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UsageAggregation',
          type: {
            name: 'Composite',
            class_name: 'UsageAggregation',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              meter_id: {
                required: false,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              usage_start_time: {
                required: false,
                serialized_name: 'properties.usageStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              usage_end_time: {
                required: false,
                serialized_name: 'properties.usageEndTime',
                type: {
                  name: 'DateTime'
                }
              },
              quantity: {
                required: false,
                serialized_name: 'properties.quantity',
                type: {
                  name: 'Object'
                }
              },
              unit: {
                required: false,
                serialized_name: 'properties.unit',
                type: {
                  name: 'String'
                }
              },
              meter_name: {
                required: false,
                serialized_name: 'properties.meterName',
                type: {
                  name: 'String'
                }
              },
              meter_category: {
                required: false,
                serialized_name: 'properties.meterCategory',
                type: {
                  name: 'String'
                }
              },
              meter_sub_category: {
                required: false,
                serialized_name: 'properties.meterSubCategory',
                type: {
                  name: 'String'
                }
              },
              meter_region: {
                required: false,
                serialized_name: 'properties.meterRegion',
                type: {
                  name: 'String'
                }
              },
              info_fields: {
                required: false,
                serialized_name: 'properties.infoFields',
                type: {
                  name: 'Composite',
                  class_name: 'InfoField'
                }
              },
              instance_data: {
                required: false,
                serialized_name: 'properties.instanceData',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
