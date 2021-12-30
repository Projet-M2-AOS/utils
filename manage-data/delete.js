import superagent from "superagent";

const deleteUsers = true;
const deleteProducts = true;

(async () => {
  if (deleteUsers) {
    const userIDs = await superagent
      .get("http://localhost:8000/users")
      .then((res) => res.body.map((user) => user._id));

    for (const id of userIDs) {
      await superagent.delete(`http://localhost:8000/users/${id}`);
    }
  }
  if (deleteProducts) {
    const productIDs = await superagent
      .get("http://localhost:8000/products")
      .then((res) => res.body.map((product) => product._id));

    for (const id of productIDs) {
      await superagent.delete(`http://localhost:8000/products/${id}`);
    }
  }
})();
