require 'rubygems'
require 'spork'
#require 'spork/ext/ruby-debug'
require 'active_support'
require 'rspec'

Spork.prefork do

end

Spork.each_run do
  require File.join(File.dirname(__FILE__), '../lib/tzip.rb')
  Dir.glob(File.dirname(__FILE__) + '/../lib/tzip/values/*.rb') {|file| require file}
end

def lookup_zip(zip)
  ActiveSupport::TimeZone.find_by_zipcode(zip)
end
