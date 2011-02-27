# TZip #

TZip makes it a little bit easier to set TimeZones in a rails app, since it can figure out the appropriate identifier from a ZIP code.

## Install & Implement ##

	$ gem install tzip

	# Gemfile
	gem 'tzip'

## Usage ##

	# Set the default time zone for a Rails app
	# Rails configuration file (config/application.rb or config/environments/development.rb, etc)
	config.time_zone = ActiveSupport::TimeZone.find_by_zipcode('90210')