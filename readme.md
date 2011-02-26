# TZip #

TZip makes it a little bit easier to set TimeZones in a rails app, since it can figure out the appropriate identifier from a ZIP code.

## Usage ##

	config.time_zone = ActiveSupport::TimeZone.find_by_zipcode('90210')