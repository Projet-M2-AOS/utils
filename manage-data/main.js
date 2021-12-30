import superagent from "superagent";
import ProductsData from "./data/products.js";
import UsersData from "./data/users.js";

(async () => {
  await superagent
    .post("http://localhost:8000/users")
    .send(UsersData)
    .then((res) => console.log(res.body))
    .catch(console.error);

  await superagent
    .post("http://localhost:8000/products")
    .send(ProductsData)
    .then((res) => console.log(res.body))
    .catch(console.error);
})();
