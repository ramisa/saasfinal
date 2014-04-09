# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = [{:title => 'PROGRAMMING IN SCALA', :author => 'ODERSKY', :condition => 'GOOD', :price => '54.95'},
    	  {:title => 'Algorithms', :author => 'Dasgupta', :condition => 'Like New', :price => '60.00'}]
 
   	 
books.each do |book|
  books.create(book)
  
end
