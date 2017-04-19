class CreateCombinations < ActiveRecord::Migration[5.0]
  def change
    create_table :combinations do |t|
      t.string :love_text
      t.integer :love_grade
      t.string :sex_text
      t.integer :sex_grade
      t.string :work_text
      t.integer :work_grade
      t.string :friendship_text
      t.integer :friendship_grade
      t.timestamps
    end
  end
end
