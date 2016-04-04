# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create [
                        {first_name: 'John', last_name: 'Doe', email: 'jdoe@gmail.com', password: 'password1'},
                        {first_name: 'Phil', last_name: 'Garret', email: 'pg@gmail.com', password: 'password2'},
                        {first_name: 'Paul', last_name: 'Smith', email: 'ps@gmail.com', password: 'password3'},
                    ]

gists = Gist.create [
                          {description: 'Ruby snippet', file_name: 'rb_snippet.rb', code: 'puts hello', secret: false, user_id: users.first.id},
                          {description: 'js snippet', file_name: 'snip.js', code: 'console.log(hello)', secret: false, user_id: users.first.id},
                          {description: 'html snippet', file_name: 'snip.html', code: '<a>mypagecode</a>', secret: false, user_id: users.last.id},
                          {description: 'github code', file_name: 'github.txt', code: '<p>hello</p>', secret: false},
                      ]
