# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user = User.create(name: 'Amrendra Kumar', email: 'amrendrak.ind@gmail.com', password: '123456')

@group1= Group.create(user_id: @user.id,  name: 'Icon1',  icon: 'app/assets/images/budget_logo.png')
@group2= Group.create(user_id: @user.id,  name: 'Icon2',  icon: 'app/assets/images/budget_logo.png')
@group3= Group.create(user_id: @user.id,  name: 'Icon3',  icon: 'app/assets/images/budget_logo.png')

@transaction1 = Transaction.create(user_id: @user.id,  name: 'Fruits',  amount: 60, group_id: @group1.id)
@transaction2 = Transaction.create(user_id: @user.id,  name: 'Vegetable',  amount: 40, group_id: @group2.id)
@transaction3 = Transaction.create(user_id: @user.id,  name: 'Books',  amount: 100, group_id: @group3.id)