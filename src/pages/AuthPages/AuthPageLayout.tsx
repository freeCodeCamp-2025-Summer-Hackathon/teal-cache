import React from "react";
import GridShape from "../../components/common/GridShape";
import { Link } from "react-router";
import ThemeTogglerTwo from "../../components/common/ThemeTogglerTwo";

export default function AuthLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="relative p-6 bg-white z-1 dark:bg-gray-900 sm:p-0">
      <div className="relative flex flex-col justify-center w-full h-screen lg:flex-row dark:bg-gray-900 sm:p-0">
        {children}
        <div className="items-center hidden w-full h-full lg:w-1/2 bg-teal-600 dark:bg-white/5 lg:grid">
          <div className="relative flex items-center justify-center z-1">
            {/* <!-- ===== Common Grid Shape Start ===== --> */}
            <GridShape />
            <div className="flex flex-col items-center max-w-xs">
              <h1 className="mb-2 font-semibold text-white text-title-sm dark:text-white/90 sm:text-title-md">
                Daily Drip
              </h1>
              <Link to="/" className="block mb-4">
                <img
                  width={431}
                  height={48}
                  src="/images/logo/main-page-pic.svg"
                  alt="Logo"
                />
              </Link>
              <p className="text-center text-gray-100 dark:text-white/60">
                A simple, private space to write freely, explore your emotions,
                and build a meaningful habit of self-reflection.
              </p>
            </div>
          </div>
        </div>
        <div className="fixed z-50 hidden bottom-6 right-6 sm:block">
          <ThemeTogglerTwo />
        </div>
      </div>
    </div>
  );
}
