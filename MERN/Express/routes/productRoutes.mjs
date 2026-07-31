import productController from "../controller/productController.mjs";

const productRouter = express.Router();

productRouter
  .get("/", productController.index)

export default productRouter;