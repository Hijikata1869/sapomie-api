class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.references :club, null: false, foreign_key: true
      t.string :name, null: false
      t.string :position, null: false
      t.string :nationary, null: false
      t.date :date_of_birth, null: false

      t.timestamps
    end
  end
end
