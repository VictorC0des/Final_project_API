# proyectoFinal_API

Este proyecto es una API REST construida con Node.js y Express, que proporciona operaciones CRUD (Crear, Leer, Actualizar, Eliminar) para diferentes recursos.

## Comenzando

Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas.

### Pre-requisitos

Necesitarás tener instalado Node.js y npm en tu máquina. Puedes descargarlos desde [aquí](https://nodejs.org/).

### Instalación

1. Clona el repositorio
```bash
git clone https://github.com/VictorC0des/proyectoFinal_API
```
2. Navega hasta el directorio del proyecto
```bash
cd proyectoFinal_API
```
3. Instala las dependencias
```bash
npm install
```
4. Navega hasta el directorio del proyecto
```bash
Ejecuta el codigo de la BD llamado bd.sql en tu gestor de bases de datos, asegurate de cambiar los valores para autenticarte en tu bd.
```
5. Inicia el servidor
```bash
npm run dev
```

## Uso

La API proporciona los siguientes endpoints:

- `GET /<recurso>`: Obtiene todos los elementos del recurso.
- `POST /<recurso>`: Crea un nuevo elemento del recurso.
- `PUT /<recurso>/:id`: Actualiza completamente un elemento del recurso.
- `PATCH /<recurso>/:id`: Actualiza parcialmente un elemento del recurso.
- `DELETE /<recurso>/:id`: Elimina un elemento del recurso.

Donde `<recurso>` es el nombre del recurso que deseas acceder.

Por ejemplo, para acceder al recurso "continents", puedes usar los siguientes endpoints:

- `GET /continents`
- `POST /continents`
- `PUT /continents/:id`
- `PATCH /continents/:id`
- `DELETE /continents/:id`

## Construido con

- [Node.js](https://nodejs.org/) - Entorno de ejecución para JavaScript
- [Express](https://expressjs.com/) - Framework de Node.js
