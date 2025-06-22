class CreateClubs < ActiveRecord::Migration[7.2]
  def change
    create_table :clubs do |t|
      t.references :league, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end

    add_index :clubs, :name, unique: true
  end
end
