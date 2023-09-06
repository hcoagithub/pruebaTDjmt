# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:


* System dependencies
    gem devise
    gem faker
    gem pagy 

* Configuration
    solo para el entorno de desarrollo

* Pasos de desarrollo:
    1. se creo la app "rails new jetmaintain -d postgresql"

    2. configuracion de la base de datos, en el database.yml, con su correspondiente user y password para el entorno de desarrollo.

    3. agregamos la gemas de devise, faker y pagy al gemfile. "bundle add devise pagy faker

    4. creamos la base de dato "rails db:create"

    5. instalamos la estructura devise "rails generate devise:install"

    6. Instalar custonizacion de componentes Devise "rails g devise:views"

    7. creamos el modelo user de devise "rails generate devise user"

    8. realizamos migracion "rails db:migrate"

    9. creamos modelo de city "rails generate model City name"

    10. creamos modelo de city "rails generate model TypeMaint type"

    11. creamos modelo de city "rails generate model TypeEngine type"

    12. generamos migracion "rails db:migrate"

    13. crear los scaffold de motor "rails g scaffold Machine name description image type_engine:references"

    14. hago la migracion "rails db:migrate"

    15. agregue un navbar y flashed al layout. 

    16. instalamos el "rails active_storage:install" con su migracion.

    17. agregar roles admin y operador "en el modelo user coloco enum role: [:admin, :operator]"

    18. agrego el campo role al modelo user "rails generate migration AddRoleToUsers role:integer"

    19. creo un controlador "rails generate controller pages Home"

    20. agregar roles y darle seguridad a las vistas

* Para levanta el proyecto:
    Tener instalado ruby en la version del gemfile.
    Hacer la correspondiente configuracion y creacion de la base de datos.
    Teniendo todo configurado en la base de datos e instaladas gemas devise, faker y pagy,
    se es necesario ejecutar el db:seed para que se creen los datos en cada una de las entidades
    como usuarios (admin y operador), motores, tipo de motores, ciudades, tipos de matenimientos.

    Para ingresar los datos de los usuarios como correo y contraseñan estan el el seed.

