# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user = User.create(name: 'Amrendra Kumar', email: 'amrendrak.ind@gmail.com', password: '123456')

@transaction1 = Trading.create(  author_id: @user.id,  name: 'Fruits',  amount: 56)
@transaction2 = Trading.create(  author_id: @user.id,  name: 'Vegetable',  amount: 12)
@transaction3 = Trading.create(  author_id: @user.id,  name: 'Books',  amount: 345)


