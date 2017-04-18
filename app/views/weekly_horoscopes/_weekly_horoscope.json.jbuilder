json.extract! weekly_horoscope, :id, :sign_id, :initial_date, :final_date, :text, :created_at, :updated_at
json.url weekly_horoscope_url(weekly_horoscope, format: :json)
