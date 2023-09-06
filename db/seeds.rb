# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(
    email: "operator@gmail.com",
    password: "123456",
    role:"operator"
  )

User.create(
email: "admin@gmail.com",
password: "123456",
role:"admin"
)

City.create(name:"Santiago")
City.create(name:"Temuco")
City.create(name:"Antofagasta")

TypeMaint.create(name:"Preventivo")
TypeMaint.create(name:"Correctivo")

TypeEngine.create(name:"Motor de acción")
TypeEngine.create(name:"Motor de turbohelice")


# Crear 20 motores
(1..20).each do |numero|
    tipo = numero % 2 == 0 ? 2 : 1
    nombre = tipo == 1 ? "react#{numero}" : "turbo#{numero}"
  
    Machine.create(
      name: nombre,
      type_engine_id: tipo,
      description: Faker::Lorem.paragraph
    )
end
  
  