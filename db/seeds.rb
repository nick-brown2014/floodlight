# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'admin')
Post.create!(title: 'Original Post', blurb: 'This is what people will see on the front page, limit 300 characters', date: 'January 20, 2016')
Post.create!(title: 'But wait, what if there is a really long title, is the layout still going to look dope AF?!?', blurb: 'We might as well try out a really long blurb too. This post is supposed to show me all the places where the layout will get messed up yo.', date: 'January 25, 2016')
Link.create!(post_id: 1, address: "http://google.com")
Message.create!(author: "Nick Brown", text: "I think you guys are swell. What a nice website. I love you.")

3.times do
  Paragraph.create(post_id: 1, text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
end

7.times do
  Paragraph.create(post_id: 2, text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  Link.create!(post_id: 2, address: "http://facebook.com")
end
