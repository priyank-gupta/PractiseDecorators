class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :language
      t.integer :age

      t.timestamps
    end
  end
end
