
import './App.css'
import Navbar from './components/Navbar'
import MyName from './components/MyName'
import Footer from './components/Footer'
import Bachra from './assets/bachra.jpg'

function App() {
  
  const employees = [
    { name: "UBAID ULLAH", profession: "State Agent" },
    { name: "Ramiz", profession: "INVIGILATOR" },
    { name: "Subhan", profession: "Khaadi Outlet" },
    { name: "Kamran", profession: "Gym Trainer" },
    { name: "Hassaan", profession: "Software Developer" }
  ];

  return (
    <div>
      <Navbar />
      {/* <h1 className='heading'>UBAID ULLAH!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
      <p className='bg-warning'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam rem nam ut in quo eligendi voluptate aliquam corporis libero architecto itaque numquam voluptatem nesciunt expedita id nisi repudiandae praesentium rerum sequi, quia neque dolor quaerat vero sed. Est blanditiis, impedit aliquid pariatur harum eos eius, enim maiores labore nemo qui!</p> */}
      {/* <MyName name={"UBAID ULLAH "} profession={"State Agent"} />
      <MyName name={"Ramiz"} profession={"INVIGILATOR "} />   
      <MyName name={"Subhan"} profession={"Khaadi Outlet"} />   
      <MyName name={"Kamran"} profession={"Gym Trainer"} />    */}

      {employees.map((employee) => (
        <MyName name={employee.name} profession={employee.profession} />
      ))}

      <img src={Bachra} alt="" />
      <img src="https://res.cloudinary.com/dnfiycc46/image/upload/v1764047078/2309B2/o7tqhkv6wgvktval6epd.jpg" alt="" />
      <Footer />
   </div>
  )
}

export default App
