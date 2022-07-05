# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.destroy_all

10.times do |x|
	Post.create(title: "Post #{x + 1}", body: "This is the content of post #{x + 1}", user_id: User.all.sample.id)
end
