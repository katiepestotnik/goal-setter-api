# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#     User.create(username: "Bear", password: "mybeloved", email: "bear@gmail.com")
# end
# 10.times do
#     Goal.create(name:"walk", start_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_completion_date: Date.parse('2020-01-01', '%Y-%m-%d'), goal_description: "walk around the block", user_id: 13)
# end
10.times do
    Update.create(actions: "walk", self_evaluation: 10, completed: true, goal_id: 9, user_id: 13)
end


