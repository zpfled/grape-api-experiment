require_relative 'config'

class PeopleController
  attr_accessor :command

  def initialize(command=nil)
    @command = command
  end

  def execute
    unless self.command
      self.command = PersonView.get_input
    end
    method = command
    self.send("by_#{method}".to_sym)
  end

  def by_gender
    PersonView.render(Person.by_gender)
    reset
  end

  def by_birthdate
    PersonView.render(Person.by_birthdate)
    reset
  end

  def by_lastname
    PersonView.render(Person.by_lastname)
    reset
  end

  def reset
    self.command = nil
    execute
  end
end
