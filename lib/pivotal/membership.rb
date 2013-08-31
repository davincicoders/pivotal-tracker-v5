require 'httparty'

# # /projects/{project_id}/memberships

# puts "Return code from header"
# puts "---------------------"
# puts memberships.code
# puts
# puts "parsed with .first['role']"
# puts "------------------------------"
# puts memberships.parsed_response.first["role"]
# puts
# puts "parsed with ['projects'].first['person']['email']"
# puts "--------------------------------------------"
# puts memberships.parsed_response.first["person"]['email']
# puts memberships.parsed_response.first["person"][:email]

# puts

# code below is from v3 for reference

# module PivotalTracker

# class Membership
  # include HTTParty
  TOKEN = ENV["PIVOTAL_TOKEN"]

  class Membership #<< self
    def all(project_id) #options={})
      response = HTTParty.get("https://www.pivotaltracker.com/services/v5/projects/#{project_id}/memberships",
                              :headers => {"X-TrackerToken" => TOKEN })
    end
  end

# element :id, Integer
# element :role, String

# # Flattened Attributes from <person>...</person>
# element :name, String, :deep => true
# element :email, String, :deep => true

# trust but verify...
# delegate :name, :email, to: response.parsed_response.first["person"]
# def email
#   response.parsed_response.first["person"]['email']
# end

# element :initials, String, :deep => true

# end


