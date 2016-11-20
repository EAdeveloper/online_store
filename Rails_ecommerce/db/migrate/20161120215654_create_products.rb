class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :pricing
      t.text :description
      t.references :user, foreign_key: true
      t.attachment :avatar

      t.timestamps
    end
  end
end
