class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items, force: true do |t|
      t.string :name, limit: 256
      t.string :short_description, limit: 256
      t.text :description
      t.integer :count
      t.integer :price

      t.timestamps
    end
  end
end
