class CreateWeeklyHoroscopes < ActiveRecord::Migration[5.0]
  def change
    create_table :weekly_horoscopes do |t|
      t.integer :sign_id
      t.date :initial_date
      t.date :final_date
      t.string :text

      t.timestamps
    end
  end
end
