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

end