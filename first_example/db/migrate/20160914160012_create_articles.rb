class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titles
      t.text :body
      t.references :user, foreign_key: true
    end
  end
end
