import React from 'react'
import { useState, useEffect } from 'react'
const index = () => {
  const [count, setCount] = useState(0)
  const getProducts = async () => {
    const response = await fetch('https://fakestoreapi.com/products')
    const data = await response.json()
    console.log(data)
  }
  return (
    <>
      <h1>API Fetch Example</h1>
      <h1>{count}</h1>
      <button className='btn btn-primary' onClick={() => setCount(count + 1)}>
        Increment
        </button>
      <button className='btn btn-primary' onClick={getProducts}>
        Get Products
      </button>
    </>
  )
}

export default index
