class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :description
      t.text :body

      t.timestamps null: false
    end
  end
end