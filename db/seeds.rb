# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Bear", password: "BMD", email: "bear@gmail.com")

User.create(username: "Missy", password: "BMD", email: "missy@gmail.com")

User.create(username: "Klondike", password: "GR", email: "klondike@gmail.com")

Goal.create(name:"walk", start_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_completion_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_description: "walk around the block", user_id: 1)

Goal.create(name:"run", start_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_completion_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_description: "run around the lake", user_id: 2)

Goal.create(name:"sit", start_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_completion_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_description: "chew on the bone", user_id: 3)

Update.create(actions: "walked", self_evaluation: 10, completed: true, goal_id: 1, user_id: 1)

Update.create(actions: "ran", self_evaluation: 7, completed: true, goal_id: 2, user_id: 2)

Update.create(actions: "chew", self_evaluation: 10, completed: true, goal_id: 3, user_id: 3)