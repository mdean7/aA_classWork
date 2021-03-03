class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name, null: false
      t.date :birthdate, null: false
      t.string :color
      t.string :sex, limit: 1
      t.text :description


      t.timestamps
    end

    add_index :cats, :name
  end
end
