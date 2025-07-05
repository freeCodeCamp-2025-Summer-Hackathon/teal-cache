import { Routes, Route } from "react-router-dom";
import Welcome from "./pages/Welcome";
import MeetTheTeam from "./pages/MeetTheTeam";
import Register from "./pages/Register";
import Contact from "./pages/Contact";
import NotFound from "./pages/NotFound";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Welcome />} />
      <Route path="/meet-the-team" element={<MeetTheTeam />} />
      <Route path="/register" element={<Register />} />
      <Route path="/contact" element={<Contact />} />
      <Route path="/not-found" element={<NotFound />} />
    </Routes>
  );
}

export default App;
