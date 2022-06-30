class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :url

      t.timestamps
    end
  end
end
