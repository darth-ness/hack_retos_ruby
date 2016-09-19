class User < ApplicationRecord
  has_many :articles, # mejor forma de borrar con herencias
                      dependent: :destroy
end

class Article < ApplicationRecord
  belongs_to :user
end

user = User.first

user.articles.build(title: 'hack', body: 'sfasfafafasdf')
#estoy agregando con build, buscarlo!!

## ejemplo para no dejar padres sin hijos, e hijos huerfanos
# forma larga...
user.articles.destroy_all
user.destroy
