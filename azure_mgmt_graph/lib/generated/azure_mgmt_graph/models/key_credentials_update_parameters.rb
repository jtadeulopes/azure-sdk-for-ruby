# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for  KeyCredentials update operation
    #
    class KeyCredentialsUpdateParameters

      include MsRestAzure

      # @return [Array<KeyCredential>] KeyCredential list.
      attr_accessor :value


      #
      # Mapper for KeyCredentialsUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyCredentialsUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyCredentialsUpdateParameters',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
