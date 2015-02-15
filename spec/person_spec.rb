require_relative '../config.rb'
system 'clear'

describe Person do
  let(:pipe_file) { './csv/pipe.csv' }

  describe '.all(source_file)' do
    it 'returns an array of people' do
      expect(Person.all(pipe_file)).to be_a Array
      expect(Person.all(pipe_file)[0]).to be_a Person
    end
  end

  describe '.by_gender(source_file)' do
    it 'returns Person.all, sorted by gender and last name ascending' do
      expect(Person.by_gender(pipe_file)[0].gender).to eq 'female'
      expect(Person.by_gender(pipe_file)[-1].gender).to eq 'male'
      first = Person.by_gender(pipe_file)[0].lastname
      second = Person.by_gender(pipe_file)[1].lastname
      expect(first < second).to be true
    end
  end

  describe '.by_birthday(source_file)' do
    it 'returns Person.all, sorted by birthday in ascending order' do
      first = Person.by_birthday(pipe_file)[0].birthday
      second = Person.by_birthday(pipe_file)[1].birthday
      expect(first < second).to be true
    end
  end

end