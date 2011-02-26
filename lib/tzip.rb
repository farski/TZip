require 'tzip/base'
require 'tzip/values/zone_names'
require 'tzip/values/zonings'
require 'tzip/values/eastern'
require 'tzip/values/central'
require 'tzip/values/mountain'
require 'tzip/values/arizona'
require 'tzip/values/pacific'
require 'tzip/values/alaska'
require 'tzip/values/hawaii'
require 'tzip/values/unused'
require 'tzip/mapping'

ActiveSupport::TimeZone.send(:include, TZip::ClassMethods) if Object.const_defined?("ActiveSupport")