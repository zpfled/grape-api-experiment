require_relative '../config.rb'

describe PeopleController do
  let(:controller) { PeopleController.new }

  describe '.by_gender' do
    it 'renders PersonView with Person.by_gender' do
      Person.stub(:by_gender) { "the right stuff" }
      controller.stub(:reset) { true }
      expect(PersonView).to receive(:render).with("the right stuff")
      controller.by_gender
    end
  end

  describe '.by_birthdate' do
    it 'renders PersonView with Person.by_birthdate' do
      Person.stub(:by_birthdate) { "the right stuff" }
      controller.stub(:reset) { true }
      expect(PersonView).to receive(:render).with("the right stuff")
      controller.by_birthdate
    end
  end

  describe '.by_lastname' do
    it 'renders PersonView with Person.by_lastname' do
      Person.stub(:by_lastname) { "the right stuff" }
      controller.stub(:reset) { true }
      expect(PersonView).to receive(:render).with("the right stuff")
      controller.by_lastname
    end
  end
end