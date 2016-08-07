require 'rspec'
require 'watir-webdriver'
require 'cucumber'
require 'rake'
require 'page-object'
require 'pdf/reader'




include RSpec::Matchers

require File.dirname(__FILE__) + "/../../features/pages/config/driver_config"
require File.dirname(__FILE__) + "/../../features/pages/justice_pages/parser_pdf"

include Automation