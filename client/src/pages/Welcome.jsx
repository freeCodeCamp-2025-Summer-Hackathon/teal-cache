"use client";

import { useState } from "react";
import { Dialog, DialogPanel } from "@headlessui/react";
import { Bars3Icon, XMarkIcon } from "@heroicons/react/24/outline";
import { useNavigate } from "react-router-dom";

const navigation = [
  { name: "Meet the Team", href: "/meet-the-team" },
  { name: "Contact", href: "/contact" },
];

export default function Welcome() {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const navigate = useNavigate();

  return (
    <div className="bg-teal-100 min-h-screen">
      <header className="absolute inset-x-0 top-0 z-50">
        <nav
          aria-label="Global"
          className="flex items-center justify-between p-6 lg:px-8"
        >
          <div className="flex lg:flex-1">
            <button
              onClick={() => navigate("/")}
              className="-m-1.5 p-1.5"
              aria-label="Home"
            >
              <img
                alt="Daily Drip Logo"
                src="/src/assets/logo1.jpeg"
                className="h-8 w-auto cursor-pointer"
              />
            </button>
          </div>

          <div className="flex lg:hidden">
            <button
              type="button"
              onClick={() => setMobileMenuOpen(true)}
              className="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700"
              aria-label="Open main menu"
            >
              <Bars3Icon className="h-6 w-6" aria-hidden="true" />
            </button>
          </div>

          <div className="hidden lg:flex lg:gap-x-12">
            {navigation.map((item) => (
              <button
                key={item.name}
                onClick={() => navigate(item.href)}
                className="text-sm font-semibold text-gray-900 hover:text-purple-900 transition cursor-pointer"
              >
                {item.name}
              </button>
            ))}
          </div>

          <div className="hidden lg:flex lg:flex-1 lg:justify-end">
            <button
              onClick={() => navigate("/not-found")}
              className="text-sm font-semibold text-white bg-purple-800 rounded px-3 py-1 text-white shadow hover:bg-purple-500 transition cursor-pointer"
            >
              Log in <span aria-hidden="true">&rarr;</span>
            </button>
          </div>
        </nav>

        <Dialog
          open={mobileMenuOpen}
          onClose={() => setMobileMenuOpen(false)}
          className="lg:hidden"
        >
          <div className="fixed inset-0 z-50 bg-black/50" aria-hidden="true" />
          <DialogPanel className="fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white p-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
            <div className="flex items-center justify-between">
              <button
                onClick={() => navigate("/")}
                className="-m-1.5 p-1.5"
                aria-label="Home"
              >
                <img
                  alt="Daily Drip Logo"
                  src="/src/assets/logo-bg-white.jpeg"
                  className="h-8 w-auto"
                />
              </button>
              <button
                type="button"
                onClick={() => setMobileMenuOpen(false)}
                className="-m-2.5 rounded-md p-2.5 text-gray-700 "
                aria-label="Close menu"
              >
                <XMarkIcon className="h-6 w-6" aria-hidden="true" />
              </button>
            </div>

            <div className="mt-6 flow-root">
              <div className="-my-6 divide-y divide-gray-500/10">
                <div className="space-y-2 py-6">
                  {navigation.map((item) => (
                    <button
                      key={item.name}
                      onClick={() => {
                        navigate(item.href);
                        setMobileMenuOpen(false);
                      }}
                      className="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold text-gray-900 hover:bg-gray-50"
                    >
                      {item.name}
                    </button>
                  ))}
                </div>
                <div className="py-6">
                  <button
                    onClick={() => {
                      navigate("/login");
                      setMobileMenuOpen(false);
                    }}
                    className="-mx-3 block rounded-lg px-3 py-2.5 text-base font-semibold text-gray-900 hover:bg-gray-50"
                  >
                    Log in
                  </button>
                </div>
              </div>
            </div>
          </DialogPanel>
        </Dialog>
      </header>

      <main className="relative isolate px-6 pt-14 lg:px-8 flex flex-col items-center justify-center min-h-screen text-center">
        <h1 className="text-5xl font-semibold tracking-tight text-gray-900 sm:text-7xl mb-6">
          Welcome to Daily Drip
        </h1>
        <p className="max-w-xl text-lg text-gray-600 mb-10">
          Daily Drip helps you connect with yourself. Register today!
        </p>
        <button
          onClick={() => navigate("/register")}
          className="rounded-md bg-purple-800 px-6 py-3 text-lg font-semibold text-white shadow hover:bg-purple-500 transition"
        >
          Get Started
        </button>
      </main>
    </div>
  );
}
