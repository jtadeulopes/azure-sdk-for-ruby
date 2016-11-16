# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of a backup schedule. Describes how often should be the
    # backup performed and what should be the retention policy.
    #
    class BackupSchedule

      include MsRestAzure

      # @return [Integer] How often should be the backup executed (e.g. for
      # weekly backup, this should be set to 7 and FrequencyUnit should be set
      # to Day)
      attr_accessor :frequency_interval

      # @return [FrequencyUnit] How often should be the backup executed (e.g.
      # for weekly backup, this should be set to Day and FrequencyInterval
      # should be set to 7). Possible values include: 'Day', 'Hour'
      attr_accessor :frequency_unit

      # @return [Boolean] True if the retention policy should always keep at
      # least one backup in the storage account, regardless how old it is;
      # false otherwise.
      attr_accessor :keep_at_least_one_backup

      # @return [Integer] After how many days backups should be deleted
      attr_accessor :retention_period_in_days

      # @return [DateTime] When the schedule should start working
      attr_accessor :start_time

      # @return [DateTime] The last time when this schedule was triggered
      attr_accessor :last_execution_time


      #
      # Mapper for BackupSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupSchedule',
          type: {
            name: 'Composite',
            class_name: 'BackupSchedule',
            model_properties: {
              frequency_interval: {
                required: false,
                serialized_name: 'frequencyInterval',
                type: {
                  name: 'Number'
                }
              },
              frequency_unit: {
                required: true,
                serialized_name: 'frequencyUnit',
                type: {
                  name: 'Enum',
                  module: 'FrequencyUnit'
                }
              },
              keep_at_least_one_backup: {
                required: false,
                serialized_name: 'keepAtLeastOneBackup',
                type: {
                  name: 'Boolean'
                }
              },
              retention_period_in_days: {
                required: false,
                serialized_name: 'retentionPeriodInDays',
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_execution_time: {
                required: false,
                serialized_name: 'lastExecutionTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
