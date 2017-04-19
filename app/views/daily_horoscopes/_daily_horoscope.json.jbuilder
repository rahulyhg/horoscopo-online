json.extract! daily_horoscope, :id, :date, :sign_id, :day_of_the_week, :text, :color, :numbers, :created_at, :updated_at
json.url daily_horoscope_url(daily_horoscope, format: :json)
