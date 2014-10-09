# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 1. Do you want to build the next Social Network for Cats? (Cat lover)
# 2. Do you think dogs should be allowed everywhere people are? (Dog lover)
# 3. Your middle name is “Meow”? (Cat lover)
# 4. Is Snoop Dog one of your favourite artists? (Dog lover)
# 5. Do you spend all day watching cat videows? (Cat lover)
# 6. Do you stop people in the street to pet their dogs? (Dog lover)

Question.create(question: 'Do you want to build the next Social Network for Cats?', animal: 'cat')
Question.create(question: 'Do you think dogs should be allowed everywhere people are?', animal: 'dog')
Question.create(question: 'Your middle name is “Meow”?', animal: 'cat')
Question.create(question: 'Is Snoop Dog one of your favourite artists?', animal: 'dog')
Question.create(question: 'Do you spend all day watching cat videos?', animal: 'cat')
Question.create(question: 'Do you stop people in the street to pet their dogs?', animal: 'dog')