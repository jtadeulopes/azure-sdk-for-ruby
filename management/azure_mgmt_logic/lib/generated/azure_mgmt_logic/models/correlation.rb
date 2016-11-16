# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    # 
    #
    class Correlation

      include MsRestAzure

      # @return [String] The client tracking id.
      attr_accessor :client_tracking_id


      #
      # Mapper for Correlation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Correlation',
          type: {
            name: 'Composite',
            class_name: 'Correlation',
            model_properties: {
              client_tracking_id: {
                required: false,
                serialized_name: 'clientTrackingId',
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
