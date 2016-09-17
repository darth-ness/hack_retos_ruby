system("clear")

# Necesario para hacer http requests
require 'net/http'

# Parser JSON de Ruby
require "json"

# Variables
endpoint = 'api.openweathermap.org'
res = "/data/2.5/weather"
appid = "13f087b391c75c48251e51a442b68bfe"
city = "Caracas,ve"

=begin
# Requests HTTP con Ruby nativo

# Forma 1

#resp = Net::HTTP.get(endpoint, "#{res}?q=#{city}&appid=#{appid}")



# Forma 2

#uri = URI("http://#{endpoint}#{res}?q=#{city}&appid=#{appid}")

#resp = Net::HTTP.get(uri)



# Forma 3
=end
uri = URI("http://#{endpoint}#{res}")
params = {:q => city, :appid => appid}
uri.query = URI.encode_www_form(params)

resp = Net::HTTP.get_response(uri)

p resp.code
p resp.message

resp_hash = JSON.parse(resp.body)

puts resp_hash
puts resp_hash["name"]
puts resp_hash["weather"].class#[0]["description"]
