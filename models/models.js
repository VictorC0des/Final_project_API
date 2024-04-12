module.exports = (sequelize, Sequelize) => {
  const Continents = sequelize.define('continents', {
    name: Sequelize.STRING,
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const Languages = sequelize.define('languages', {
    name: Sequelize.STRING,
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const Countries = sequelize.define('countries', {
    name: Sequelize.STRING,
    continent_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'continent',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    population: Sequelize.INTEGER,
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const Capitals = sequelize.define('capitals', {
    country_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'countries',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    name: Sequelize.STRING,
    population: Sequelize.INTEGER,
    coordinates: Sequelize.GEOMETRY('POINT'),
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const CitySubdivisions = sequelize.define('citySubdivisions', {
    name: Sequelize.STRING,
    capital_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'capital',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    population: Sequelize.INTEGER,
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const States = sequelize.define('states', {
    country_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'country',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    name: Sequelize.STRING,
    population: Sequelize.INTEGER
  }, {
    timestamps: false,
    freezeTableName: true,
  });


  const Municipalities = sequelize.define('municipalities', {
    name: Sequelize.STRING,
    state_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'states',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    population: Sequelize.INTEGER,
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  const CountryLanguages = sequelize.define('countryLanguages', {
    country_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'country',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
    language_id: {
      type: Sequelize.INTEGER,
      references: {
        model: 'language',
        key: 'id'
      },
      onDelete: 'CASCADE'
    },
  }, {
    timestamps: false,
    freezeTableName: true,
  });

  Countries.belongsToMany(Languages, { through: CountryLanguages, foreignKey: 'country_id' });
  Languages.belongsToMany(Countries, { through: CountryLanguages, foreignKey: 'language_id' });

  return { Continents, Languages, Countries, Capitals, CitySubdivisions,States, Municipalities, CountryLanguages };
};