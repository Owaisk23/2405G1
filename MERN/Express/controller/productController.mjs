import fs from "fs";

const dataPath = "./data.json";

// READ PRODUCTS
let index = (req, res) => {
  try {
    const data = JSON.parse(fs.readFileSync(dataPath, "utf-8"));

    res.status(200).json(data.products);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

// CREATE PRODUCT
let addProduct = (req, res) => {
  try {
    const { title, price } = req.body;

    if (!title || !price) {
      return res.status(400).json({
        message: "Title and Price are required",
      });
    }

    const data = JSON.parse(fs.readFileSync(dataPath, "utf-8"));

    const products = data.products;

    // Generate next ID
    const newProduct = {
      id:
        products.length > 0
          ? Math.max(...products.map((p) => p.id)) + 1
          : 1,
      title,
      price,
    };

    products.push(newProduct);

    fs.writeFileSync(
      dataPath,
      JSON.stringify({ products }, null, 2),
      "utf-8"
    );

    res.status(201).json({
      message: "Product added successfully",
      product: newProduct,
    });
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

// DELETE PRODUCT
let deleteProduct = (req, res) => {
  try {
    const id = Number(req.params.id);

    const data = JSON.parse(fs.readFileSync(dataPath, "utf-8"));

    let products = data.products;

    const deletedProduct = products.find((item) => item.id === id);

    if (!deletedProduct) {
      return res.status(404).json({
        message: "Product not found",
      });
    }

    products = products.filter((item) => item.id !== id);

    fs.writeFileSync(
      dataPath,
      JSON.stringify({ products }, null, 2),
      "utf-8"
    );

    res.status(200).json({
      message: "Product deleted successfully",
      product: deletedProduct,
    });
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

// UPDATE PRODUCT
let updateProduct = (req, res) => {
  try {
    const id = Number(req.params.id);

    const { title, price } = req.body;

    const data = JSON.parse(fs.readFileSync(dataPath, "utf-8"));

    const products = data.products;

    const productIndex = products.findIndex((item) => item.id === id);

    if (productIndex === -1) {
      return res.status(404).json({
        message: "Product not found",
      });
    }

    products[productIndex] = {
      ...products[productIndex],
      ...(title && { title }),
      ...(price && { price }),
    };

    fs.writeFileSync(
      dataPath,
      JSON.stringify({ products }, null, 2),
      "utf-8"
    );

    res.status(200).json({
      message: "Product updated successfully",
      product: products[productIndex],
    });
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

// GET SINGLE PRODUCT
let getSingleProduct = (req, res) => {
  try {
    const id = Number(req.params.id);

    const data = JSON.parse(fs.readFileSync(dataPath, "utf-8"));

    const product = data.products.find((item) => item.id === id);

    if (!product) {
      return res.status(404).json({
        message: "Product not found",
      });
    }

    res.status(200).json(product);
  } catch (error) {
    res.status(500).json({
      message: error.message,
    });
  }
};

const productController = {
  index,
  getSingleProduct,
  addProduct,
  updateProduct,
  deleteProduct,
};

export default productController;