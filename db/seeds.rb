# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
posts = Post.create([
    {title: "First Post", body: "This is my first post"},
    {title: "Second Post", body: "This is my second post"},
    {title: "Third Post", body: "This is my third post"},
    {title: "Fourth Post", body: "This is my fourth post"},

])