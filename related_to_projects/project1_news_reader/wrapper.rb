require 'rest-client'
require 'json'
system('clear')
class Wrapper
  # attr_accessor = base_url

  def initialize base_url, resource
    @base_url = base_url
    @resource = resource
  end

  def get
    response = RestClient.get @base_url + @resource
    parsed = JSON.parse(response.body)
  end
end

request1 = Wrapper.new('http://192.168.24.30:3000', '/posts/')
req = request1.get
# puts req[0]['id']
puts
req.each {|i| puts req[i]['id']}
