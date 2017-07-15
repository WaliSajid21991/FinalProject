json.extract! our_doctor, :id, :image_url, :firstname, :lastname, :speciality, :created_at, :updated_at
json.url our_doctor_url(our_doctor, format: :json)
