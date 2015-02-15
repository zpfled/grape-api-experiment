module PersonView

  def self.render(people_data)
    system 'clear'
    puts
    puts
    puts "Here is the data you asked for:"
    puts
    people_data.each do |person|
      name = "#{person.firstname} #{person.lastname}"
      gender = person.gender
      color = person.favorite_color
      bday = person.birthday
      puts "#{name} (#{gender}) was born on #{bday}, and loves #{color}."
    end
  end

end