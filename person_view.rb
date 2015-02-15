module PersonView

  def self.render(people_data)
    system 'clear'
    view = "\n\nHere is the data you asked for:\n"
    people_data.each do |person|
      name = "#{person.firstname} #{person.lastname}"
      gender = person.gender
      color = person.favorite_color
      bday = person.birthday
      view += "\n#{name} (#{gender}) was born on #{bday}, and loves #{color}."
    end
    return view
  end

end