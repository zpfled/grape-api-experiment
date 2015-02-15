require_relative 'config'
require 'csv'
require 'faker'

CSV.open(DATA_PATH, "wb") do |csv|
	10.times do
	  csv << ["#{Faker::Name.last_name}, #{Faker::Name.first_name}, #{['male', 'female'].sample}, #{['red', 'yellow', 'blue', 'green', 'orange'].sample}, #{Faker::Date.birthday.to_s.split('-').rotate.join('-')}"]
    csv << ["#{Faker::Name.last_name} | #{Faker::Name.first_name} | #{['male', 'female'].sample} | #{['red', 'yellow', 'blue', 'green', 'orange'].sample} | #{Faker::Date.birthday.to_s.split('-').rotate.join('-')}"]
	  csv << ["#{Faker::Name.last_name} #{Faker::Name.first_name} #{['male', 'female'].sample} #{['red', 'yellow', 'blue', 'green', 'orange'].sample} #{Faker::Date.birthday.to_s.split('-').rotate.join('/')}"]
  end
end