require 'rest-client'
require 'json'

class Post

  def self.all
    response = RestClient.get('http://192.168.24.30:3000')
    posts = JSON.parse(response.body)
  end

  def self.show(id)
    response = RestClient.get('http://192.168.24.30:3000' + id.to_s)
    posts = JSON.parse(response.body)
  end

  def self.create(attributes = {})
    params = {
      title: attributes[:title]
      body: attributes[:body]
      userID: attributes[:user_id]
    }
    response = RestClient.post('http://192.168.24.30:3000', params)
    posts = JSON.parse(response.body)
  end

  def update
    
  end

  def delete

  end

end
