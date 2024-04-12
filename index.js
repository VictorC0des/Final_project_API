const express = require("express");
const app = express();
const port = 3000;
const bodyParser = require("body-parser");
const { getItems, createItem, updateItem, deleteItem, updateItemPartial } = require("./querys/querys");
const db = require('./db');


app.use(bodyParser.json());

const Route = (path, model) => {
  app.get(`/${path}`, getItems(model));
  app.post(`/${path}`, createItem(model));
  app.put(`/${path}/:id`, updateItem(model));
  app.patch(`/${path}/:id`, updateItemPartial(model));
  app.delete(`/${path}/:id`, deleteItem(model));
};


Route("continents", "continents");
Route("languages", "languages");
Route("countries", "countries");
Route("capitals", "capitals");
Route("states", "states");
Route("municipalities", "municipalities");
Route("citySubdivisions", "citySubdivisions");
Route("countryLanguages", "countryLanguages");

app.get('/continents/:name/countries', async (req, res) => {
  try {
    const { name } = req.params;
    const continent = await db.continents.findOne({ where: { name } });
    if (!continent) {
      return res.status(404).json({ message: `Continent with name ${name} not found` });
    }
    const countries = await db.countries.findAll({ where: { continent_id: continent.id } });
    res.json(countries);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.get('/countries/:name/states', async (req, res) => {
  try {
    const { name } = req.params;
    const country = await db.countries.findOne({ where: { name } });
    if (!country) {
      return res.status(404).json({ message: `Country with name ${name} not found` });
    }
    const states = await db.states.findAll({ where: { country_id: country.id } });
    res.json(states);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.get('/states/:name/municipalities', async (req, res) => {
  try {
    const { name } = req.params;
    const state = await db.states.findOne({ where: { name } });
    if (!state) {
      return res.status(404).json({ message: `State with name ${name} not found` });
    }
    const municipalities = await db.municipalities.findAll({ where: { state_id: state.id } });
    res.json(municipalities);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.get('/countries/:name/capital', async (req, res) => {
  try {
    const { name } = req.params;
    const country = await db.countries.findOne({ where: { name } });
    if (!country) {
      return res.status(404).json({ message: `Country with name ${name} not found` });
    }
    const capital = await db.capitals.findOne({ where: { country_id: country.id } });
    res.json(capital);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.get('/countries/:name/population', async (req, res) => {
  try {
    const { name } = req.params;
    const country = await db.countries.findOne({ where: { name } });
    if (!country) {
      return res.status(404).json({ message: `Country with name ${name} not found` });
    }
    res.json({ population: country.population });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.get('/countries/:name/languages', async (req, res) => {
  try {
    const { name } = req.params;
    const country = await db.countries.findOne({ where: { name } });
    if (!country) {
      return res.status(404).json({ message: `Country with name ${name} not found` });
    }
    const countryLanguages = await db.countryLanguages.findAll({ where: { country_id: country.id } });
    const languages = await Promise.all(countryLanguages.map(cl => db.languages.findOne({ where: { id: cl.language_id } })));
    res.json(languages);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

app.listen(port, () => {
  console.log(` app running on port https://localhost:${port}`);
});