# climed-db
CliMed DB

Database project for the CliMed solution.

This project contains the set of migrations needed in order to run the main project. By running the migrations sequentially, it is possible to create the database needed for the solution to work properly.

A database helper software can be used to automatically run and track migrations, such as [dbmate](https://github.com/amacneil/dbmate). Please, follow instructions from the dbmate repository for installation and setup.

## dbmate command examples
Create a new migration
- Set the DATABASE_URL variable in a .env file
- Run command `dbmate -d ./migrations new <file_name>`

Run migrations up to latest version:
- Run command `dbmate --no-dump-schema -d ./migrations up`

Rollback migrations:
- Run command `dbmate --no-dump-schema -d ./migrations rollback`

Dump all migrations to schema file:
- Run command `dbmate -s ./schema.sql dump`
