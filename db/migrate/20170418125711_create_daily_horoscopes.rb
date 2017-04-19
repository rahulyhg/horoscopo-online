class CreateDailyHoroscopes < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_horoscopes do |t|
      t.date :date
      t.integer :sign_id
      t.string :day_of_the_week
      t.string :text
      t.string :color
      t.string :numbers

      t.timestamps
    end
  end
end
