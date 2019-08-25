require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'faker'
require "cpf_faker"
require_relative 'helper.rb'
require_relative 'pages_helper.rb'
require_relative 'wait_for_ajax.rb'


World(Helper)
World(Pages)
World(WaitForAjax)
World(JavascriptDriver)
#World(ClearBrowser)

ENVIRONMENT=ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")


Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['pattern_url']
    config.default_max_wait_time = 10
end

