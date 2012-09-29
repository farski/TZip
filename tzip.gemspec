# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'tzip/version'
 
Gem::Specification.new do |s|
  s.name        = "tzip"
  s.version     = TZip::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Kalafarski"]
  s.email       = ["chris@farski.com"]
  s.homepage    = "http://github.com/farski/tzip"
  s.summary     = "Simplifies defining time zones in Rails apps with ZIP codes."
  s.description = "TZip can resolve United States ZIP codes into the appropriate Rails time zone identifier. This makes it easier to setup your rails app, or change time zones based on user input."
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_dependency('activesupport', '>= 2.3')
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(readme.md)
  s.require_path = 'lib'
end
