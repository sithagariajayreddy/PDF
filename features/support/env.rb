require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'page-object'


include Selenium
include RSpec::Matchers

require File.dirname(__FILE__) + "/../pages/pages"
include Automation