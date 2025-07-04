function App() {

  return (
    <>
    <div className="relative flex items-center justify-center h-[50px] px-10 bg-[#336699]">
      {/* Centered navigation links */}
      <div className="flex gap-4 text-white">
        <a href="#home" className="px-4 py-2 bg-[#04AA6D]">Home</a>
        <a href="#news" className="px-4 py-2 hover:bg-gray-200 hover:text-black">News</a>
        <a href="#contact" className="px-4 py-2 hover:bg-gray-200 hover:text-black">Contact</a>
        <a href="#about" className="px-4 py-2 hover:bg-gray-200 hover:text-black">About</a>
      </div>

      {/* Right-side login/register buttons */}
      <div className="absolute right-10 flex gap-2">
        <button className="px-3 py-2 bg-white rounded hover:bg-gray-200">Login</button>
        <button className="px-3 py-2 bg-white rounded hover:bg-gray-200">Register</button>
      </div>
    </div>
    </>

  )
}

export default App
