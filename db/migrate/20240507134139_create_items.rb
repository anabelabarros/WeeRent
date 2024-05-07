class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end
