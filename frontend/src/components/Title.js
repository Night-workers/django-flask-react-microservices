import {useState, useEffect} from 'react'
import * as axios from 'axios'
// Title component
const Title = () => {
  const [hello, setHello] = useState([])
  const [world, setWorld] = useState([{}])
  const [helloloading, setHelloLoading] = useState(false)
  const [worldloading, setWorldLoading] = useState(false)
  const helloUrl = `http://localhost:8000/api/`
  const worldUrl = `http://localhost:8001/api`

  useEffect(() => {
    const getHello = async () => {
      setHelloLoading(true)

      try {
        const {data} = await axios.get(helloUrl)
        setHello(data)
      } catch  {
        
      } finally {
        setHelloLoading(false)
      }

    }

    const getWorld = async () => {
      setWorldLoading(true)

      try {
        const {data} = await axios.get(worldUrl)
        setWorld(data)
        console.log(data)
      }
      catch {

      } finally {
        setWorldLoading(false)
      }
    }
    
    getHello()
    getWorld()
  }, [])
  return (
    <div className="title">
      <span className="caption">{hello[0]?.title}  <strong>{world?.title} </strong>
      </span>
    </div>
  );
};


export default Title;