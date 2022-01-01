import superagent from "superagent";

const ressources = [
  {
    name: "users",
    deleteAll: true,
  },
  {
    name: "products",
    deleteAll: true,
  },
  {
    name: "comments",
    deleteAll: true,
  },
  {
    name: "ratings",
    deleteAll: true,
  },
  {
    name: "lists",
    deleteAll: false,
  },
  {
    name: "orders",
    deleteAll: true,
  },
];

(async () => {
  const ressourcesWithDeleteAll = ressources.filter((e) => e.deleteAll);
  for (const { name } of ressourcesWithDeleteAll) {
    const allIDs = await superagent
      .get(`http://localhost:8000/${name}`)
      .then((res) => res.body.map((element) => element._id));

    for (const id of allIDs) {
      await superagent.delete(`http://localhost:8000/${name}/${id}`);
    }
  }
})();
