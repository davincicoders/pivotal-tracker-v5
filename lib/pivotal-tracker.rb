require 'version'
require 'httparty'

class PivotalTracker

end

require 'pivotal-tracker/client'
require 'pivotal-tracker/story'
require 'pivotal-tracker/project'
require 'pivotal-tracker/membership'

class PivotalTracker
  # logic suggests we will need config file accessed here
  # config = YAML::load_file(File.dirname(__FILE__) + '/config/pivotal_credentials.yml')
  include HTTParty

  base_uri = 'https://www.pivotaltracker.com/services/v5'


end