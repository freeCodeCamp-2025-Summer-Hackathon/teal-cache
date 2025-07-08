import { useNavigate } from "react-router-dom";
import GridShape from "../../components/common/GridShape";
import ThemeTogglerTwo from "../../components/common/ThemeTogglerTwo";
import Button from "../../components/ui/button/Button"; // Use the same styled button component

export default function Welcome() {
  const navigate = useNavigate();

  const handleGetStarted = () => {
    navigate("/signin");
  };

  return (
    <div className="relative p-6 bg-white dark:bg-gray-900 z-1 sm:p-0">
      <div className="relative flex flex-col justify-center w-full h-screen lg:flex-row dark:bg-gray-900 sm:p-0">
        {/* Left Side - Text and Button */}
        <div className="flex flex-col items-center justify-center w-full h-full lg:w-1/2 px-6 text-center lg:text-left">
          <div className="max-w-md w-full space-y-6">
            <h1 className="text-4xl font-bold text-gray-900 dark:text-white">
              Welcome!
            </h1>
            <p className="text-lg text-gray-700 dark:text-gray-300">
              A simple, private space to write freely, explore your emotions,
              and build a meaningful habit of self-reflection.
            </p>
            <Button
              className="w-full bg-teal-600 hover:bg-teal-700"
              size="sm"
              onClick={handleGetStarted}
            >
              Get Started
            </Button>
          </div>
        </div>

        {/* Right Side - Illustration and Branding */}
        <div className="items-center hidden w-full h-full lg:w-1/2 bg-teal-600 dark:bg-white/5 lg:grid">
          <div className="relative flex items-center justify-center z-1">
            <GridShape />
            <div className="flex flex-col items-center max-w-xs text-center">
              <img
                width={431}
                height={48}
                src="/images/logo/logo-bg-teal.png"
                alt="Logo"
                className="mb-4"
              />
              {/* <p className="text-gray-100 dark:text-white/60">
                A simple, private space to write freely, explore your emotions,
                and build a meaningful habit of self-reflection.
              </p> */}
            </div>
          </div>
        </div>

        {/* Theme Toggle */}
        <div className="fixed z-50 hidden bottom-6 right-6 sm:block">
          {/* <ThemeTogglerTwo /> */}
        </div>
      </div>
    </div>
  );
}
