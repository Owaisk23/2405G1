import productController from "../controller/productController.mjs";
import express from 'express';

const productRouter = express.Router();

productRouter
  .get("/", productController.index)

export default productRouter;