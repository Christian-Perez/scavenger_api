# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


test_objectives = Objective.create([
  {name: 'find the marker',
    description: 'say marker',
    answer: 'marker',
    completed: false},
  {name: 'find the laptop charger',
    description: 'minus the laptop',
    answer: 'charger',
    completed: false},
  {name: 'find the backpack',
    description: 'Type backpack',
    answer: 'backpack',
    completed: false},
  {name: 'find the instructor',
    description: 'MiIrKat starts with an "m" for ...',
    answer: 'Mike',
    completed: false},
  {name: 'find the snack',
    description: 'Santa Eats a single...',
    answer: 'cookie',
    completed: false},
  {name: 'find the author of this program',
    description: "What's my name...",
    answer: 'Christian',
    completed: false}
  ])

  # need to have multiple objectives
  hunt_template_1 = HuntTemplate.create(
    {name: 'Test Template 1',
      description: 'The first Hunt Template :)',
      objective: test_objectives}
    )

  player_1 = Player.create(name: 'Christian', email: 'chris@tian.com')

  hunt_1 = Hunt.create(hunt_template: hunt_template_1, player: player_1 ,start_time: DateTime.now, end_time: 2016-09-20 10:30:00)

# players = Player.create([
#   {},
#   {},
#   {}
#   ])
