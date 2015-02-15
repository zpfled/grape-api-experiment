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


end
