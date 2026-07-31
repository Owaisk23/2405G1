
let index = (req, res) => {
    let postId = req.params.id;
  let postObj = [
    {
      postId: 1,
      title: 'Palestine Ceases Fire',
      content: 'After 1100 days of conflict, a ceasefire was announced between',
    },
    {
      postId: 2,
      title: 'Ukraine War',
      content: 'The war in Ukraine has caused unprecedented destruction and',
    },
    {
      postId: 3,
      title: 'Global Economic Outlook',
      content: 'The global economy is facing significant challenges due to',
    }
  ];

  postObj.map((post) => {
    if (post.postId == postId) {
      console.log(post);
      postObj = post;
    }
  })
  res.json(postObj);
}

let addProduct = (req, res) => {
try {
    const newProduct = req.body;

    // basic validation (optional but recommended)
    if (!newProduct.title || !newProduct.price) {
      return res.status(400).json({ message: "name and price are required" });
    }

    // add new product
    products.push(newProduct);

    // save back to file
    fs.writeFileSync(
      dataPath,
      JSON.stringify({ products }, null, 2),
      'utf-8'
    );

    res.status(201).json({
      message: "Product added successfully",
      product: newProduct
    });

  } catch (error) {
    console.error("error adding product:", error);
    res.status(500).json({
      message: "error adding product",
      error: error.message
    });
  }
}

let deleteProduct = (req, res) => {
     try {
        const id = req.params.id;
    
        const deletedProduct = products.find((item) => item.id == id);
    
        if (!deletedProduct) {
          return res.status(404).json({
            message: "Product not found",
          });
        }
    
        products = products.filter((item) => item.id != id);
    
        // Save updated array to file
        fs.writeFileSync(
          "./data.json",
          JSON.stringify(products, null, 2)
        );
    
        res.status(200).json({
          message: "Product deleted successfully",
          product: deletedProduct,
        });
    
      } catch (error) {
        console.log(error);
        res.status(500).json({
          message: error.message,
        });
      }
}




const productController = {
  index,
  addProduct,
  deleteProduct
};

export default productController;













