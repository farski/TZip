# TZip #

TZip makes it a little bit easier to set TimeZones in a rails app, since it can figure out the appropriate identifier from a ZIP code.

[ ![Codeship Status for chiron-health/TZip](https://codeship.com/projects/ff254ae0-818e-0133-f841-224be51da39b/status?branch=master)](https://codeship.com/projects/121276)

## Install & Implement ##

	$ gem install tzip

	# Gemfile
	gem 'tzip'

## Usage ##

	# Set the default time zone for a Rails app
	# Rails configuration file (config/application.rb or config/environments/development.rb, etc)
	config.time_zone = ActiveSupport::TimeZone.find_by_zipcode('90210')
