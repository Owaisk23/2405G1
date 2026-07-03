import "./App.css";
import Navbar from "./components/Navbar";
import MyName from "./components/MyName";
import Footer from "./components/Footer";
import Bachra from "./assets/bachra.jpg";
import Card from "./components/Card";
import { useState } from "react";
function App() {
  const employees = [
    { name: "UBAID ULLAH", profession: "State Agent" },
    { name: "Ramiz", profession: "INVIGILATOR" },
    { name: "Subhan", profession: "Khaadi Outlet" },
    { name: "Kamran", profession: "Gym Trainer" },
    { name: "Hassaan", profession: "Software Developer" },
  ];

  let cardData = [
    {
      title: "Samsung Galaxy S24 Ultra",
      desc: "Flagship Android phone with S-Pen support and AI-powered features.",
      img: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf",
    },
    {
      title: "Sony WH-1000XM5",
      desc: "Industry-leading noise cancelling wireless headphones.",
      img: "https://images.unsplash.com/photo-1546435770-a3e426bf472b",
    },
    {
      title: "Apple Watch Series 9",
      desc: "Smartwatch with fitness tracking, ECG monitoring, and seamless iPhone integration.",
      img: "https://images.unsplash.com/photo-1510017803434-a899398421b3",
    },
    {
      title: "Dell XPS 15",
      desc: "High-performance ultrabook with InfinityEdge display and premium build quality.",
      img: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    },
    {
      title: "Logitech MX Master 3S",
      desc: "Ergonomic wireless mouse designed for productivity and creators.",
      img: "https://images.unsplash.com/photo-1527814050087-3793815479db",
    },
    {
      title: "iPad Pro",
      desc: "Versatile tablet powered by Apple Silicon, ideal for creativity and multitasking.",
      img: "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0",
    },
    {
      title: "ASUS ROG Strix G16",
      desc: "Gaming laptop with high refresh-rate display and RTX graphics.",
      img: "https://images.unsplash.com/photo-1603302576837-37561b2e2302",
    },
    {
      title: "GoPro HERO12",
      desc: "Action camera capable of capturing ultra-smooth 5.3K videos.",
      img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
    },
  ];

  const [count, setCount] = useState(0);
    let [user, setUser] = useState({
    name: "Owais Ahmed Khan",
    profession: "Software Developer",
  });
  // const [image, setImage] = useState(image);
  const handleIncrement = () => {
    setCount(count + 1);
    // count++;
    console.log(count);
  };
   const updateUser = () => {
    setUser({ ...user, profession: "Full Stack Developer" });
    // console.log(user);
  };


  return (
    <div>
      
      <Navbar />
      {/* <h1 className='heading'>UBAID ULLAH!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
      <p className='bg-warning'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam rem nam ut in quo eligendi voluptate aliquam corporis libero architecto itaque numquam voluptatem nesciunt expedita id nisi repudiandae praesentium rerum sequi, quia neque dolor quaerat vero sed. Est blanditiis, impedit aliquid pariatur harum eos eius, enim maiores labore nemo qui!</p> */}
      {/* <MyName name={"UBAID ULLAH "} profession={"State Agent"} />
      <MyName name={"Ramiz"} profession={"INVIGILATOR "} />   
      <MyName name={"Subhan"} profession={"Khaadi Outlet"} />   
      <MyName name={"Kamran"} profession={"Gym Trainer"} />    */}


      <h2>{count}</h2>
      <button className="btn btn-primary" onClick={handleIncrement}>
        Increment({count})
      </button>

       <h2>
        Name: {user.name} Profession: {user.profession}
      </h2>
      <button className="btn btn-primary" onClick={updateUser}>
        Update User
      </button> 


      {/* {employees.map((employee, index) => (
        <MyName
          key={index}
          name={employee.name}
          profession={employee.profession}
        />
      ))} */}

      {cardData.map((card, index) => (
        <Card
          key={index}
          title={card.title}
          desc={card.desc}
          img={card.img}
        />
      ))}

      <img src={Bachra} alt="" />
      <img
        src="https://res.cloudinary.com/dnfiycc46/image/upload/v1764047078/2309B2/o7tqhkv6wgvktval6epd.jpg"
        alt=""
      />
      <Footer />
    </div>
  );
}

export default App;
