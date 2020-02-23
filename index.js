const Sequelize = require("sequelize");

const connection = new Sequelize("dummydb", "root", "root", {
  host: "localhost",
  dialect: "mysql",
  define: {
    timestamps: false
  },
  query: {
    raw: true
  }
});

const TableA = connection.define(
  "tableA",
  {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    name: { type: Sequelize.STRING }
  },
  { tableName: "tableA" }
);

const TableB = connection.define(
  "tableB",
  {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true }
  },
  { tableName: "tableB" }
);

TableA.hasOne(TableB, { foreignKey: "aId" });

async function run() {
  const aRows = await TableA.findAll({ include: [TableB] });
  console.log(aRows);
}

run();
