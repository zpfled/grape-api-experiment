class Person
	attr_accessor	:lastname, :firstname, :gender, :favorite_color, :birthday

  def initialize(attrs)
		@lastname = attrs[:lastname]
		@firstname = attrs[:firstname]
		@gender = attrs[:gender]
		@favorite_color = attrs[:favorite_color]
		@birthday = attrs[:birthday]
	end

  def self.all(data_source)
    Reader.read(data_source).map { |record| Person.new(record) }
  end

  def self.by_gender(data_source)
    people = all(data_source)
    female = people.select { |p| p.gender == 'female' }
    male = people.select { |p| p.gender == 'male' }
    female.sort_by(&:lastname) + male.sort_by(&:lastname)
  end

end
