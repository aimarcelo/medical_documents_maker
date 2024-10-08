# frozen_string_literal: true

city = [
  'Pasig', 'Marikina', 'Quezon', 'San Juan', 'Makati'
]

middle_name = Faker::Name.last_name
date_range = (1.year.ago.to_date..1.hour.ago.to_date).to_a

30.times do |_i|
  Patient.create(
    created_at: date_range.sample.to_datetime,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    middle_name:,
    email: Faker::Internet.email(domain: '@example.com'),
    contact_number: '0123456789',
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
    city: city.sample,
    province: 'Metro Manila'
  )
end
