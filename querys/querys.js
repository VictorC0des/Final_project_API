const db = require("../db.js");

const getItems = (model) => async (req, res) => {
  try {
    const items = await db[model].findAll();
    res.json(items);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const createItem = (model) => async (req, res) => {
  try {
    const item = await db[model].create(req.body);
    res.json(item);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
const updateItem = (model) => async (req, res) => {
  try {
    fields = req.body;
    if (Object.keys.length == 0) {
      return res.status(400).json({ message: "All fields are need" });
    }
    const { id } = req.params;


    const [updated] = await db[model].update(req.body, {
      where: { id }
    });

    if (updated) {
      const updatedItem = await db[model].findOne({ where: { id } });
      return res.status(200).json({ item: updatedItem });
    }
    throw new Error(`${model} not found`);
  } catch (error) {
    return res.status(500).json({ message: error.message });
  }
};
const updateItemPartial = (model) => async (req, res) => {
  try {

    const { id } = req.params;
    const [updated] = await db[model].update(req.body, {
      where: { id }
    });

    if (updated) {
      const updatedItem = await db[model].findOne({ where: { id } });
      return res.status(200).json({ item: updatedItem });
    }
    throw new Error(`${model} not found`);
  } catch (error) {
    return res.status(500).json({ message: error.message });
  }
};


const deleteItem = (model) => async (req, res) => {
  try {
    const { id } = req.params;

    const deleted = await db[model].destroy({
      where: { id }
    });

    if (deleted) {
      return res.status(200).json({ message: `Deleted ${model} with id ${id}` });
    }
    throw new Error(`${model} not found`);
  } catch (error) {
    return res.status(500).json({ message: error.message });
  }
};

module.exports = {
  getItems,
  createItem,
  updateItem,
  deleteItem,
  updateItemPartial
};
