import express from "express";
import multer from "multer";
import { upload } from '../cloudinaryConfig.mjs';
import productController from "../controller/productController.mjs";

const productRouter = express.Router();

productRouter
  .get("/", productController.index)
  .post("/addproduct", upload.single("images"), productController.addProductWithImage);
export default productRouter;