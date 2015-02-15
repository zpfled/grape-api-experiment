require_relative '../config.rb'
system 'clear'

describe Person do

  describe '.all' do
    it 'returns an array of people' do
      expect(Person.all).to be_a Array
      expect(Person.all[0]).to be_a Person
    end
  end

  describe '.by_gender' do
    it 'returns Person.all, sorted by gender and last name ascending' do
      expect(Person.by_gender[0].gender).to eq 'female'
      expect(Person.by_gender[-1].gender).to eq 'male'
      first = Person.by_gender[0].lastname
      second = Person.by_gender[1].lastname
      expect(first < second).to be true
    end
  end

  describe '.by_birthday' do
    it 'returns Person.all, sorted by birthday in ascending order' do
      first = Person.by_birthday[0].birthday
      second = Person.by_birthday[1].birthday
      expect(first < second).to be true
    end
  end

  describe '.by_lastname' do
    it 'returns Person.all, sorted by birthday in ascending order' do
      first = Person.by_lastname[0].lastname
      second = Person.by_lastname[1].lastname
      expect(first > second).to be true
    end
  end

end