class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :summary
      t.integer :author_id
      t.datetime :published_at
      t.string :publication

      t.timestamps
    end
  end
end
