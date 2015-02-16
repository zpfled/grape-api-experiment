require_relative 'config'

app = PeopleController.new(ARGV[0])
app.execute