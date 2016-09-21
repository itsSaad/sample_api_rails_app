# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Owner.find_or_create_by(first_name:"Alex", last_name:"Hopkins").articles.find_or_create_by(title: "I have a dream", content:"But i cant remember what it was.")
Owner.find_or_create_by(first_name:"John", last_name:"Hopkins").articles << [Article.find_or_create_by(title: "Article 1", content:"Content for article 1"),Article.find_or_create_by(title: "Article 2", content:"Content for article 2"),Article.find_or_create_by(title: "Article 3", content:"Content for article 3")]
