import { useNavigate } from "react-router-dom";

export default function Contact() {
  const navigate = useNavigate();
  return (
    <div className="min-h-screen bg-teal-100 flex items-center justify-center">
      <button
        onClick={() => navigate("/")}
        className="rounded-md bg-purple-800 px-6 py-3 text-lg font-semibold text-white shadow hover:bg-purple-500 transition"
      >
        Back To Main Page
      </button>
    </div>
  );
}
