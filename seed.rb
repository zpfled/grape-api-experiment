require_relative 'config'
require 'csv'
require 'faker'

comma_path = './csv/comma.csv'
pipe_path = './csv/pipe.csv'
space_path = './csv/space.csv'

CSV.open(comma_path, "wb") do |csv|
	10.times do
	  csv << ["#{Faker::Name.last_name}, #{Faker::Name.first_name}, #{['male', 'female'].sample}, #{['red', 'yellow', 'blue', 'green', 'orange'].sample}, #{Faker::Date.birthday.to_s.split('-').rotate.join('-')}"]
	end
end

CSV.open(pipe_path, "wb") do |csv|
	10.times do
	  csv << ["#{Faker::Name.last_name} | #{Faker::Name.first_name} | #{['male', 'female'].sample} | #{['red', 'yellow', 'blue', 'green', 'orange'].sample} | #{Faker::Date.birthday.to_s.split('-').rotate.join('-')}"]
	end
end

CSV.open(space_path, "wb") do |csv|
	10.times do
	  csv << ["#{Faker::Name.last_name} #{Faker::Name.first_name} #{['male', 'female'].sample} #{['red', 'yellow', 'blue', 'green', 'orange'].sample} #{Faker::Date.birthday.to_s.split('-').rotate.join('-')}"]
	end
end

