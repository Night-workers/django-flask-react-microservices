import {useState, useEffect} from 'react'
import * as axios from 'axios'
// Title component
const Title = () => {
  const [products, setProducts] = useState([])
  const [loading, setLoading] = useState(false)
  const produtsUrl = `http://localhost:8000/api/products`

  useEffect(() => {
    const getProducts = async () => {
      setLoading(true)

      try {
        const {data} = await axios.get(produtsUrl)
        setProducts(data)
      } catch  {
        
      } finally {
        setLoading(false)
      }

    }
    getProducts()
  }, [])
  return (
    <div className="title">
      <span className="caption">{products[0]?.title} Hello <strong>{products[1]?.title} World</strong>
      </span>
    </div>
  );
};


export default Title;