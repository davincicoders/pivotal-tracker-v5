require 'vcr'
require 'pivotal-tracker'
require 'yaml'

TOKEN = ENV["PIVOTAL_TOKEN_ID"]  # here until we a better place for it

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  # config.order = 'random'
end

# VCR Config
VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.cassette_library_dir = 'spec/fixtures/pivotal_tracker_cassettes'
  c.hook_into :webmock

  c.filter_sensitive_data('<PIVOTAL_API_TOKEN>') do |interaction|
    ENV['PIVOTAL_TOKEN_ID']
  end
  c.filter_sensitive_data('<PIVOTAL_LOGIN>') do |interaction|
    ENV['PIVOTAL_EMAIL'].gsub(/\@/, '%40')
  end
  c.filter_sensitive_data('<PIVOTAL_EMAIL_ADDRESS>') do |interaction|
    ENV['PIVOTAL_EMAIL']
  end
  c.filter_sensitive_data('<PIVOTAL_USER_NAME>') do |interaction|
    ENV['PIVOTAL_USER_NAME']
  end
  c.filter_sensitive_data('<PIVOTAL_PASSWORD>') do |interaction|
    ENV['PIVOTAL_USER_PASSWORD']
  end
end

def capture_output
  @stdout = $stdout
  @stderr = $stdout
end

def set_token
  PivotalTracker::Client.token = ENV['PIVOTAL_TOKEN_ID']
end

config = YAML::load_file(File.dirname(__FILE__) + '/config/pivotal_credentials.yml')