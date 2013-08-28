require 'httparty'

# Add your API token to this constant in your environment
# Do not push to public repo with a real value in this field

# /projects/{project_id}/memberships

TOKEN = ENV["PIVOTAL_TOKEN"]
project_id = 899156


memberships = HTTParty.get("https://www.pivotaltracker.com/services/v5/projects/#{project_id}/memberships",
                           :headers => {"X-TrackerToken" => TOKEN })

puts "complete API response"
puts "---------------------"
puts memberships
puts
puts "parsed with .first['role']"
puts "------------------------------"
puts memberships.parsed_response.first["role"]
puts
puts "parsed with ['projects'].first['person']"
puts "--------------------------------------------"
puts memberships.parsed_response.first["person"]
puts
puts "API endpoint '#{project_id}/memberships'"
puts "------------------"
puts "Role is #{memberships.first["role"]}"
puts "ID is #{memberships.first["id"]}"
puts "Project ID is #{memberships.first["project_id"]}"
puts "Kind is #{memberships.first["kind"]}"
puts "Last viewed at #{memberships.first["last_viewed_at"]}"
puts

# module PivotalTracker
#   class Membership


    # class << self
    #   def all(project, options={})
    #     parse(Client.connection["/projects/#{project.id}/memberships"].get)
    #   end
    # end

    # element :id, Integer
    # element :role, String

    # # Flattened Attributes from <person>...</person>
    # element :name, String, :deep => true
    # element :email, String, :deep => true
    # element :initials, String, :deep => true

#   end
# end


