# Finalproject_API

This project is a REST API built with Node.js and Express, which provides CRUD (Create, Read, Update, Delete) operations for different resources.

## Getting started

These instructions will allow you to get a working copy of the project on your local machine for development and testing purposes.

### Pre-requisites

You will need to have Node.js and npm installed on your PC. You can download them from [here](https://nodejs.org/).

### Installation

1. Clone the repository
```bash
git clone https://github.com/VictorC0des/Final_project_API
```
2. Navega hasta el directorio del proyecto
```bash
cd Finalproject_API
```
3. Install the dependencies
```bash
npm install
```
4. Create database
```bash
Run the DB code called BD.sql in your database manager, be sure to change the values to authenticate to your database.
```
5. Fill the database
```bash
Run the DB code called inserts_proyect_example.sql in your database manager. These are just examples, you will be able to fill the database via the endpoints.
```
6. Start the server
```bash
npm run dev
```

## Use

The API provides the following endpoints:

- `GET /<resource>`: Get all elements of the table.
- `POST /<resource>`: Creates a new element in the table.
- `PUT /<resource>/:id`: Completely updates an element in the table.
- `PATCH /<resource>/:id`: Parcially updates an element in the table.
- `DELETE /<resource>/:id`: Deletes an element of the table.
- `GET /continents/:name/countries`: Retrieves all countries of a specific continent.
- `GET /states/:name/municipalities`: Retrieves all municipalities of a specific state.
- `GET /countries/:name/capital`: Retrieves the capital of a specific country.
- `GET /countries/:name/population`: Retrieves the population of a specific country.
- `GET /countries/:name/languages`: Retrieves all languages spoken in a specific country.

Where `<table>` is the the table name that you want access and `<name>`the name of the continent, state, or country you want to acces .

For example, to access the table "continents", you can use the following endpoints:

- `GET /continents`
- `POST /continents`
- `PUT /continents/:id`
- `PATCH /continents/:id`
- `DELETE /continents/:id`
  
Replace :id with the actual ID of the continent you want to update or delete.

## Built with:
- [Node.js](https://nodejs.org/) - Execution environment for JavaScript
- [Express](https://expressjs.com/) - Node.js framework
