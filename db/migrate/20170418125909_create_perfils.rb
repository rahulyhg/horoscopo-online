class CreatePerfils < ActiveRecord::Migration[5.0]
  def change
    create_table :perfils do |t|
      t.integer :sign_id
      t.string :love_text
      t.string :sex_text
      t.string :family_text
      t.string :work_text
      t.string :friendship_text

      t.timestamps
    end
  end
end
