require_relative 'config'

class PeopleController
  attr_accessor :command

  def initialize(command=nil)
    @command = command
  end

  def execute
    unless command
      command = PersonView.get_input
    end
    p "command, ", "by_#{command}"
    self.send("by_#{command}".to_sym)
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
    command = nil
    execute
  end
end