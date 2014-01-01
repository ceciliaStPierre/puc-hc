# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(firstname: "Esteban", secondname: "Nicolás", father_lastname: "Piñones", mother_lastname: "Valenzuela", phone_number: 99180862, speciality: "Ingeniero", email: "cabasp@gmail.com", password: "123123123", password_confirmation: "123123123", avatar: "http://us.battle.net/static-render/us/ragnaros/224/71307744-avatar.jpg?alt=/wow/static/images/2d/avatar/8-0.jpg" )

p = Plan.create(clinical_objective: "Objetivo de los doctores", family_objective: "Objetivo de la familia", risk_factor: "low", state: "open", plan_type: "algo", user_id: 1)
