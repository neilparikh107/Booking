json.extract! booking, :id, :cleaning_type, :in_win, :out_win, :fridge, :balcony, :date, :time, :street, :suburb, :postcode, :created_at, :updated_at
json.url booking_url(booking, format: :json)
