require_relative '../config.rb'

describe PersonView  do
  describe '.render(people_data)' do
    it 'pretty-prints all the people passed to it' do
      people_data = [
        Person.new(Reader.format_data("Rosenbaum Lori female yellow 01-11-1974".split)),
        Person.new(Reader.format_data("Kohler Russel male green 01-13-1952".split))
      ]
      output_string = "\n\nHere is the data you asked for:\n" +
      "\nLori Rosenbaum (female) was born on 01-11-1974, and loves yellow." +
      "\nRussel Kohler (male) was born on 01-13-1952, and loves green."

      expect(PersonView.render(people_data)).to eq output_string
    end
  end
end