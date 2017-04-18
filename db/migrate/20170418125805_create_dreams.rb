class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.string :name
      t.string :description
      t.string :lucky_numbers
      t.string :animal
      t.string :color

      t.timestamps
    end
  end
end
