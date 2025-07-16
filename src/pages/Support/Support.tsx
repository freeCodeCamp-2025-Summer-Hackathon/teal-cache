const Support = () => {
  return (
    <div>
      <h1 className="text-2xl font-semibold text-gray-800 dark:text-white/90 mb-12">
        Support
      </h1>
      <div className="flex flex-col items-center justify-center">
        <img
          width={431}
          height={48}
          src="/images/support/Active Support-bro.svg"
          alt="Logo"
          className="mb-4"
        />
        <p className="text-gray-800 dark:text-white/90 text-center">
          If you're having trouble with the app, please reach out to us at
          <a
            href="mailto:support@yourapp.com"
            className="text-blue-600 underline ml-1"
          >
            support@dailydrip-dummyemail.com
          </a>
        </p>
      </div>
    </div>
  );
};

export default Support;
