# Test the ability to authenticate

require 'httparty'

# Add your API token to this constant
# Do not push to public repo with a value in this
TOKEN = ENV["PIVOTAL_TOKEN"]

response = HTTParty.get('https://www.pivotaltracker.com/services/v5/me',
                        :headers => {"X-TrackerToken" => TOKEN })

puts
puts "complete API response"
puts "---------------------"
puts response
puts
puts "parsed with ['projects'].first"
puts "------------------------------"
puts response.parsed_response["projects"].first
puts
puts "parsed with ['projects'].first['project_id']"
puts "--------------------------------------------"
puts response.parsed_response["projects"].first['project_id']
puts
puts "API endpoint '/me'"
puts "------------------"
puts "Username is #{response["username"]}"
puts "ID is #{response["id"]}"
puts "Name is #{response["name"]}"
puts "Email is #{response["email"]}"
puts "API Token is #{response["api_token"]}"