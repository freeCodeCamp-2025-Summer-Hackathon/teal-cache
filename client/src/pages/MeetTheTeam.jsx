import userImage from "../assets/user.png";
import { useNavigate } from "react-router-dom";

const people = [
  {
    name: "Amadeo",
    role: "Discord name - n4pZ",
    imageUrl: userImage,
  },
  {
    name: "kwui3",
    role: "Discord name - Kay",
    imageUrl: userImage,
  },
  {
    name: "cosmonewt",
    role: "Discord name - Theo",
    imageUrl: userImage,
  },
  {
    name: "liquidsonic",
    role: "Discord name - Saevar",
    imageUrl: userImage,
  },
  {
    name: "JesNetWD",
    role: "Discord name - Jes",
    imageUrl: userImage,
  },
  {
    name: "bobby2910",
    role: "Discord name - vB",
    imageUrl: userImage,
  },
  {
    name: "Simon Aust",
    role: "Discord name - Simon",
    imageUrl: userImage,
  },
  {
    name: "Amine",
    role: "Discord name - Amine",
    imageUrl: userImage,
  },
];

export default function MeetTheTeam() {
  const navigate = useNavigate();

  return (
    <div className="bg-teal-100 py-24 sm:py-32 min-h-screen">
      <div className="mx-auto grid max-w-7xl gap-20 px-6 lg:px-8 xl:grid-cols-3">
        <div className="max-w-xl">
          <h2 className="text-3xl font-semibold tracking-tight text-gray-900 sm:text-4xl">
            Meet our team
          </h2>
          <p className="mt-6 text-lg leading-8 text-gray-600">
            We’re a dynamic group of individuals who are passionate about what
            we do and dedicated to delivering the best results.
          </p>
          <img
            alt="Daily Drip Logo"
            src="/src/assets/logo1.jpeg"
            className="h-8 w-auto cursor-pointer"
          />
        </div>
        <ul
          role="list"
          className="grid gap-x-8 gap-y-12 sm:grid-cols-2 sm:gap-y-16 xl:col-span-2"
        >
          {people.map((person) => (
            <li key={person.name}>
              <div className="flex items-center gap-x-6">
                <img
                  alt=""
                  src={person.imageUrl}
                  className="h-16 w-16 rounded-full"
                />
                <div>
                  <h3 className="text-base font-semibold tracking-tight text-gray-900">
                    {person.name}
                  </h3>
                  <p className="text-sm font-semibold text-indigo-600">
                    {person.role}
                  </p>
                </div>
              </div>
            </li>
          ))}
        </ul>
        <button
          onClick={() => navigate("/")}
          className="rounded-md bg-purple-800 px-6 py-3 text-lg font-semibold text-white shadow hover:bg-purple-500 transition"
        >
          Back To Main Page
        </button>
      </div>
    </div>
  );
}
