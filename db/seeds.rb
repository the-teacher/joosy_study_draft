# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |index|
  post = Post.new 
  num  = index.next
  post.title = "Title #{num}"
  post.name  = "Name  #{num}"
  post.title = "Content #{num}"
  post.save
  print '.'
end