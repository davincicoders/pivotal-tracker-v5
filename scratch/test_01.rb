# Test the ability authenticate

require 'httparty'

TOKEN = '93e1e6aa56d9a1e839a40e0e2021fcef'

response = HTTParty.get('https://www.pivotaltracker.com/services/v5/me',
                        :headers => {"X-TrackerToken" => TOKEN })

puts
puts "API endpoint '/me'"
puts "-----------------"
puts "Username is #{response["username"]}"
puts "ID is #{response["id"]}"
puts "Name is #{response["name"]}"
puts "Email is #{response["email"]}"
puts "API Token is #{response["api_token"]}"
puts






