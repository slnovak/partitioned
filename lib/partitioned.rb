require 'active_record/base'

require 'monkey_patch_activerecord'
require 'monkey_patch_postgres'

if ActiveRecord::Base.configurations.include? 'redshiftdb'
  require 'monkey_patch_redshift'
end

require 'partitioned/active_record_overrides'
require 'partitioned/partitioned_base/configurator.rb'
require 'partitioned/partitioned_base/configurator/data'
require 'partitioned/partitioned_base/configurator/dsl'
require 'partitioned/partitioned_base.rb'
require 'partitioned/partitioned_base/configurator/reader'
require 'partitioned/partitioned_base/partition_manager'
require 'partitioned/partitioned_base/sql_adapter'
require 'partitioned/partitioned_base/redshift_sql_adapter'

require 'partitioned/by_time_field'
require 'partitioned/by_yearly_time_field'
require 'partitioned/by_monthly_time_field'
require 'partitioned/by_weekly_time_field'
require 'partitioned/by_daily_time_field'
require 'partitioned/by_created_at'
require 'partitioned/by_integer_field'
require 'partitioned/by_id'
require 'partitioned/by_foreign_key'

require 'partitioned/multi_level'
require 'partitioned/multi_level/configurator/data'
require 'partitioned/multi_level/configurator/dsl'
require 'partitioned/multi_level/configurator/reader'
require 'partitioned/multi_level/partition_manager'
