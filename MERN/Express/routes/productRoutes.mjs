import express from "express";
import productController from "../controller/productController.mjs";

const productRouter = express.Router();

productRouter
  .get("/", productController.index)
  // .get("/:id", productController.getSingleProduct)
  // .post("/", productController.addProduct)
  // .put("/:id", productController.updateProduct)
  // .delete("/:id", productController.deleteProduct);

export default productRouter;