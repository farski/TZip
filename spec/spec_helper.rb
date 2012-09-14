require File.join(File.dirname(__FILE__), '/../lib/tzip')
require 'spork'
require 'spork/ext/ruby-debug'

def lookup_zip(zip)
  ActiveSupport::TimeZone.find_by_zipcode(zip)
end
