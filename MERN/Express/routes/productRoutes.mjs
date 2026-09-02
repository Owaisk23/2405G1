import express from "express";
import multer from "multer";
import { upload } from '../cloudinaryConfig.mjs';
import productController from "../controller/productController.mjs";
import userController from "../controller/userController.mjs";

const productRouter = express.Router();

productRouter
  // .get("/",productController.index)

  .get("/", userController.auth, productController.index)
  //          Middleware
  // .post("/addproduct", upload.single("images"), productController.addProductWithImage);
  .post('/', upload.array('images'), productController.addProductWithImage);

export default productRouter;