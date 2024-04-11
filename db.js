const { Sequelize } = require("sequelize");
const sequelize = new Sequelize("geographic", "root", "", {
    host: "localhost",
    dialect: "mariadb"
});

(async () => {
    try {
        await sequelize.authenticate();
        console.log("Connection has been established successfully.");
    } catch (error) {
        console.error("Unable to connect to the database:", error);
    }
})();

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

const models = require("./models/models.js")(sequelize, Sequelize);
db.continents = models.Continents;
db.languages = models.Language;
db.countries = models.Countries;
db.capitals = models.Capitals;
db.citySubdivisions = models.CitySubdivisions;
db.countryLanguages = models.CountryLanguages;

module.exports = db;