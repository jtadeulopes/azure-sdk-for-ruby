# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Description of queue Resource.
    #
    class QueueResource < MsRestAzure::Resource

      include MsRestAzure

      # @return [DateTime] Last time a message was sent, or the last time
      # there was a receive request to this queue.
      attr_accessor :accessed_at

      # @return [Duration] the TimeSpan idle interval after which the queue is
      # automatically deleted. The minimum duration is 5 minutes.
      attr_accessor :auto_delete_on_idle

      # @return [AvailabilityStatus] entity availability status for the queue.
      # Possible values include: 'Available', 'Limited', 'Renaming',
      # 'Restoring', 'Unknown'
      attr_accessor :availability_status

      # @return [DateTime] the exact time the message was created.
      attr_accessor :created_at

      # @return [Duration] the default message time to live value. This is the
      # duration after which the message expires, starting from when the
      # message is sent to Service Bus. This is the default value used when
      # TimeToLive is not set on a message itself.
      attr_accessor :default_message_time_to_live

      # @return [Duration] TimeSpan structure that defines the duration of the
      # duplicate detection history. The default value is 10 minutes..
      attr_accessor :duplicate_detection_history_time_window

      # @return [Boolean] value that indicates whether server-side batched
      # operations are enabled..
      attr_accessor :enable_batched_operations

      # @return [Boolean] a value that indicates whether this queue has dead
      # letter support when a message expires.
      attr_accessor :enable_dead_lettering_on_message_expiration

      # @return [Boolean] a value that indicates whether Express Entities are
      # enabled. An express queue holds a message in memory temporarily
      # before writing it to persistent storage.
      attr_accessor :enable_express

      # @return [Boolean] value that indicates whether the queue to be
      # partitioned across multiple message brokers is enabled.
      attr_accessor :enable_partitioning

      # @return [String] the path to the recipient to which the dead lettered
      # message is forwarded.
      attr_accessor :forward_dead_lettered_messages_to

      # @return [String] the path to the recipient to which the message is
      # forwarded.
      attr_accessor :forward_to

      # @return [Boolean] a value that indicates whether the message is
      # anonymous accessible.
      attr_accessor :is_anonymous_accessible

      # @return [Duration] the duration of a peek lock; that is, the amount of
      # time that the message is locked for other receivers. The maximum
      # value for LockDuration is 5 minutes; the default value is 1 minute.
      attr_accessor :lock_duration

      # @return [Integer] the maximum delivery count. A message is
      # automatically deadlettered after this number of deliveries.
      attr_accessor :max_delivery_count

      # @return [Integer] the maximum size of the queue in megabytes, which is
      # the size of memory allocated for the queue.
      attr_accessor :max_size_in_megabytes

      # @return [Integer] the number of messages in the queue.
      attr_accessor :message_count

      # @return [MessageCountDetails]
      attr_accessor :message_count_details

      # @return [String] the name of the queue.
      attr_accessor :path

      # @return [Boolean] the value indicating if this queue requires
      # duplicate detection.
      attr_accessor :requires_duplicate_detection

      # @return [Boolean] a value that indicates whether the queue supports
      # the concept of session.
      attr_accessor :requires_session

      # @return [Integer] the size of the queue in bytes.
      attr_accessor :size_in_bytes

      # @return [EntityStatus] Enumerates the possible values for the status
      # of a messaging entity. Possible values include: 'Active', 'Creating',
      # 'Deleting', 'Disabled', 'ReceiveDisabled', 'Renaming', 'Restoring',
      # 'SendDisabled', 'Unknown'
      attr_accessor :status

      # @return [Boolean] a value that indicates whether the queue supports
      # ordering.
      attr_accessor :support_ordering

      # @return [DateTime] the exact time the message has been updated.
      attr_accessor :updated_at

      # @return [String] Represents the metadata description of the queue.
      attr_accessor :user_metadata


      #
      # Mapper for QueueResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'QueueResource',
          type: {
            name: 'Composite',
            class_name: 'QueueResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              accessed_at: {
                required: false,
                serialized_name: 'properties.AccessedAt',
                type: {
                  name: 'DateTime'
                }
              },
              auto_delete_on_idle: {
                required: false,
                serialized_name: 'properties.AutoDeleteOnIdle',
                type: {
                  name: 'TimeSpan'
                }
              },
              availability_status: {
                required: false,
                serialized_name: 'properties.AvailabilityStatus ',
                type: {
                  name: 'Enum',
                  module: 'AvailabilityStatus'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.CreatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              default_message_time_to_live: {
                required: false,
                serialized_name: 'properties.DefaultMessageTimeToLive',
                type: {
                  name: 'TimeSpan'
                }
              },
              duplicate_detection_history_time_window: {
                required: false,
                serialized_name: 'properties.DuplicateDetectionHistoryTimeWindow ',
                type: {
                  name: 'TimeSpan'
                }
              },
              enable_batched_operations: {
                required: false,
                serialized_name: 'properties.EnableBatchedOperations',
                type: {
                  name: 'Boolean'
                }
              },
              enable_dead_lettering_on_message_expiration: {
                required: false,
                serialized_name: 'properties.EnableDeadLetteringOnMessageExpiration',
                type: {
                  name: 'Boolean'
                }
              },
              enable_express: {
                required: false,
                serialized_name: 'properties.EnableExpress',
                type: {
                  name: 'Boolean'
                }
              },
              enable_partitioning: {
                required: false,
                serialized_name: 'properties.EnablePartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              forward_dead_lettered_messages_to: {
                required: false,
                serialized_name: 'properties.ForwardDeadLetteredMessagesTo',
                type: {
                  name: 'String'
                }
              },
              forward_to: {
                required: false,
                serialized_name: 'properties.ForwardTo',
                type: {
                  name: 'String'
                }
              },
              is_anonymous_accessible: {
                required: false,
                serialized_name: 'properties.IsAnonymousAccessible',
                type: {
                  name: 'Boolean'
                }
              },
              lock_duration: {
                required: false,
                serialized_name: 'properties.LockDuration ',
                type: {
                  name: 'TimeSpan'
                }
              },
              max_delivery_count: {
                required: false,
                serialized_name: 'properties.MaxDeliveryCount ',
                type: {
                  name: 'Number'
                }
              },
              max_size_in_megabytes: {
                required: false,
                serialized_name: 'properties.MaxSizeInMegabytes ',
                type: {
                  name: 'Number'
                }
              },
              message_count: {
                required: false,
                serialized_name: 'properties.MessageCount ',
                type: {
                  name: 'Number'
                }
              },
              message_count_details: {
                required: false,
                serialized_name: 'properties.MessageCountDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MessageCountDetails'
                }
              },
              path: {
                required: false,
                serialized_name: 'properties.Path',
                type: {
                  name: 'String'
                }
              },
              requires_duplicate_detection: {
                required: false,
                serialized_name: 'properties.RequiresDuplicateDetection',
                type: {
                  name: 'Boolean'
                }
              },
              requires_session: {
                required: false,
                serialized_name: 'properties.RequiresSession',
                type: {
                  name: 'Boolean'
                }
              },
              size_in_bytes: {
                required: false,
                serialized_name: 'properties.SizeInBytes ',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.Status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              support_ordering: {
                required: false,
                serialized_name: 'properties.SupportOrdering',
                type: {
                  name: 'Boolean'
                }
              },
              updated_at: {
                required: false,
                serialized_name: 'properties.UpdatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              user_metadata: {
                required: false,
                serialized_name: 'properties.UserMetadata',
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
