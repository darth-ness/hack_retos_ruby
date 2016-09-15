class AlterColumnTitleInArticle < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :titles, :title
  end
end
