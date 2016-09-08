# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Objective.create({name: 'find the marker', description: 'say marker', answer: 'marker', completed: false})

new_hunt = Hunt.create()
  objectives = [
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
  ]
  more_objectives = [
  {name: 'find the marker 2',
    description: 'say marker',
    answer: 'marker',
    completed: false},
  {name: 'find the laptop charger 2',
    description: 'minus the laptop',
    answer: 'charger',
    completed: false},
  {name: 'find the backpack 2',
    description: 'Type backpack',
    answer: 'backpack',
    completed: false},
  {name: 'find the instructor 2',
    description: 'MiIrKat starts with an "m" for ...',
    answer: 'Mike',
    completed: false},
  {name: 'find the snack 2',
    description: 'Santa Eats a single...',
    answer: 'cookie',
    completed: false},
  {name: 'find the author of this program 2',
    description: "What's my name...",
    answer: 'Christian',
    completed: false}
  ]

first_objectives = Objective.create(objectives)
second_objectives = Objective.create(more_objectives)

# need to have multiple objectives
hunt_template_1 = HuntTemplate.create(
  {name: 'Test Template 1',
    description: 'The first Hunt Template :)',
    objectives: first_objectives,
    duration_min: 120
  }
)

hunt_template_2 = HuntTemplate.create(
  {name: 'Test Template 2',
    description: 'The second Hunt Template :P',
    objectives: second_objectives,
    duration_min: 120
  }
)

player_1 = Player.create(name: 'Christian', email: 'chris@tian.com')
player_2 = Player.create(name: 'Catholic', email: 'catholic@tian.com')

hunt_1 = Hunt.create(hunt_template_id: hunt_template_1.id, player_id: player_1.id, start_time: Time.parse("2016-09-5 13:30:00 UTC"), end_time: Time.parse('2016-09-25 12:30:00 UTC') )
hunt_2 = Hunt.create(hunt_template_id: hunt_template_2.id, player_id: player_2.id, start_time: Time.parse("2016-09-10 10:30:00 UTC"), end_time: Time.parse('2016-09-25 12:30:00 UTC') )

# don't think this'll work..
first_player_objectives = PlayerObjective.create([
  {completed: false, hunt_id: 1, objective_id: 1},
  {completed: false, hunt_id: 1, objective_id: 2},
  {completed: false, hunt_id: 1, objective_id: 3},
  {completed: false, hunt_id: 1, objective_id: 4},
  {completed: false, hunt_id: 1, objective_id: 5},
  {completed: false, hunt_id: 1, objective_id: 6}
])
second_player_objectives = PlayerObjective.create([
  {completed: false, hunt_id: 2, objective_id: 7},
  {completed: false, hunt_id: 2, objective_id: 8},
  {completed: false, hunt_id: 2, objective_id: 9},
  {completed: false, hunt_id: 2, objective_id: 10},
  {completed: false, hunt_id: 2, objective_id: 11},
  {completed: false, hunt_id: 2, objective_id: 12}
])
