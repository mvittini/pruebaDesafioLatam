# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Account.destroy_all
Client.destroy_all

users=[]

(1..3).each do |i|
  users << User.create(
    email: "user_#{i}@mail.com",
    password: 'password'
  )
end

accounts=[]

accounts << Account.create(
	typeaccount: 'caja',
    description: 'caja del negocio que maneja efectivo',
    balance: 400000

	)

accounts << Account.create(
	typeaccount: 'Cuenta corriente',
    description: 'cuenta corriente de la empreza',
    balance: 6000000

	)

accounts << Account.create(
	typeaccount: 'Cuenta de ahorros',
    description: 'Cuenta de ahorros de la empreza',
    balance: 5000000

	)

accounts << Account.create(
	typeaccount: 'Cuentas por cobrar',
    description: 'Corresponde a las cuentas por cobrar a los clientes',
    balance: 700000

	)

clients=[]

(1..10).each do |r|
    clients << Client.create(
        status: Faker::Number.between(1, 4),
        fullname: Faker::Name.name,
        lastname: Faker::Name.last_name,
        phone: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.street_address
        )
end