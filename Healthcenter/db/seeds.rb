# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Usuarios
u1 = User.create(firstname: "Esteban", secondname: "Nicolás", father_lastname: "Piñones", mother_lastname: "Valenzuela", phone_number: 99180862, speciality: "Ingeniería", email: "cabasp@gmail.com", password: "123123123", password_confirmation: "123123123", avatar: "http://us.battle.net/static-render/us/ragnaros/224/71307744-avatar.jpg?alt=/wow/static/images/2d/avatar/8-0.jpg", is_admin: true )
u2 = User.create(firstname: "Mauricio", secondname: "Ignacio", father_lastname: "Rodriguez", mother_lastname: "Peña", phone_number: 90000001, speciality: "Kinesiología", email: "mrodriguez@test.com", password: "123123123", password_confirmation: "123123123", avatar: "http://www.keepsmilindds.com/wp-content/uploads/2012/04/dr_avatar.jpg", is_admin: false )
u3 = User.create(firstname: "Magdalena", secondname: "Denisse", father_lastname: "Alvarez", mother_lastname: "Concha", phone_number: 90000002, speciality: "Pediatria", email: "malvarez@test.com", password: "123123123", password_confirmation: "123123123", avatar: "http://www.mdspecialists.ca/images/team/3-bth_no-avatar-female-doctor.png", is_admin: false )
u4 = User.create(firstname: "Sofia", secondname: "Paz", father_lastname: "Campos", mother_lastname: "Parra", phone_number: 90000003, speciality: "Traumatología", email: "scampos@test.com", password: "123123123", password_confirmation: "123123123", avatar: "http://www.veryicon.com/icon/png/Object/Medical%20DaPino/Doctor%20Assistant.png", is_admin: false )

#Grupos familiares
g1 = FamilyGroup.create(family_name: "Familia Parez")

#Pacientes
p1 = Patient.create(firstname: "Juan", secondname: "Pablo", father_lastname: "Perez", mother_lastname: "Díaz", born_date: "1975-11-25", sex: "male", home_adress: "Una avenida 255", phone_number: 90000101, contact_number: 90000201, avatar: "http://www.sports-buddies.com/backup/images/avatar-male.png")
p2 = Patient.create(firstname: "Daniela", secondname: "Rocio", father_lastname: "Perez", mother_lastname: "Muñoz", born_date: "2002-11-25", sex: "female", home_adress: "Una avenida 255", phone_number: 90000101, contact_number: 90000201, avatar: "http://icons.iconarchive.com/icons/icons-land/vista-people/256/Age-Child-Female-Light-icon.png")

#Planes
pa1 = Plan.create(clinical_objective: "Dignostico del origen y un posible tratamiento del traumatismo del pie del paciente", family_objective: "Mejora de la dolencia en el pie de nuestro padre", risk_factor: "low", state: "open", plan_type: "algo", user_id: 2, family_group_id: 1)

#Actividades
a1 = Activity.create(description: "Serie de examenes exhaustivos al pie del paciente", activity_type: "clinical", deadline: "2014-01-15", user_id: 4, plan_id: 1)
a2 = Activity.create(description: "Investigación de la hija del paciente por posibles problemas hereditarios", activity_type: "family", deadline: "2014-01-20", user_id: 3, plan_id: 1)

#Asociaciones
g1.patients << p1
g1.patients << p2

