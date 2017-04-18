class CreateSigns < ActiveRecord::Migration[5.0]
  def change
    create_table :signs do |t|
      t.integer :perfil_id
      t.string :name
      t.string :icon_sign_url
      t.date :initial_date
      t.date :final_date

      t.timestamps
    end
  end
end
