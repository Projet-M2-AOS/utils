import superagent from "superagent";
import CommentsData from "./data/comments.js";
import ProductsData from "./data/products.js";
import UsersData from "./data/users.js";
import { randomDate } from "./utils/randomDate.js";

const totalUser = UsersData.length;
const totalProduct = UsersData.length;

(async () => {
  await superagent
    .post("http://localhost:8000/users")
    .send(UsersData)
    .then(() => console.log("users done"))
    .catch(console.error);

  await superagent
    .post("http://localhost:8000/products")
    .send(ProductsData)
    .then(() => console.log("products done"))
    .catch(console.error);

  const allComments = ProductsData.reduce((allComments, product) => {
    const nbUserComments = Math.max(Math.ceil(Math.random() * totalUser), 3);
    const productComments = Array.from({ length: nbUserComments }, () => {
      const user = UsersData[Math.floor(Math.random() * totalUser)];
      const description =
        CommentsData[Math.floor(Math.random() * CommentsData.length)];

      return {
        product: product._id,
        user: user._id,
        title: "No Title",
        createDate: randomDate(
          new Date(2021, 0, 1),
          new Date(2022, 0, 1)
        ).toISOString(),
        description,
      };
    });
    return allComments.concat(productComments);
  }, []);

  await superagent
    .post("http://localhost:8000/comments")
    .send(allComments)
    .then(() => console.log("comments done"))
    .catch(console.error);

  const allRatings = ProductsData.reduce((allRatings, product) => {
    const nbUserRating = Math.max(Math.ceil(Math.random() * totalUser), 3);
    const baseIndex = Math.floor(Math.random() * totalUser);
    const productComments = Array.from(
      { length: nbUserRating },
      (_, indexRating) => {
        const user = UsersData[(baseIndex + indexRating) % totalUser];
        const score = Math.max(Math.ceil(Math.random() * 5), 1);

        return {
          product: product._id,
          user: user._id,
          score,
          date: randomDate(new Date(2021, 0, 1), new Date(2022, 0, 1))
            .toISOString()
            .split("T")[0],
        };
      }
    );
    return allRatings.concat(productComments);
  }, []);

  await superagent
    .post("http://localhost:8000/ratings")
    .send(allRatings)
    .then(() => console.log("ratings done"))
    .catch(console.error);
})();
