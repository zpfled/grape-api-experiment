class Person
	attr_accessor	:lastname, :firstname, :gender, :favorite_color, :birthday

  def initialize(attrs)
		@lastname = attrs[:lastname]
		@firstname = attrs[:firstname]
		@gender = attrs[:gender]
		@favorite_color = attrs[:favorite_color]
		@birthday = attrs[:birthday]
	end

  def self.all
    Reader.read.map { |record| Person.new(record) }
  end

  def self.by_gender
    people = self.all
    female = people.select { |p| p.gender == 'female' }
    male = people.select { |p| p.gender == 'male' }
    female.sort_by(&:lastname) + male.sort_by(&:lastname)
  end

  def self.by_birthdate
    all.sort_by do |person|
      "#{person.birthday[-4..-1]}#{person.birthday[0..1]}#{person.birthday[-7..-6]}".to_i
    end
  end

  def self.by_lastname
    all.sort_by(&:lastname).reverse
  end
end
