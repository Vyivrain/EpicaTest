class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :amount
      t.belongs_to :purchase
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
