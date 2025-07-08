# Daily Drip

A modern journaling app built with React, Tailwind CSS, and Supabase authentication.

![Daily Drip](./banner.png)

## Overview

This project is based on the TailAdmin free React Tailwind admin dashboard template. It has been enhanced with Supabase authentication to provide a complete authentication system for admin panels and dashboard applications.

### Prerequisites

Before you begin, ensure you have:

- Node.js (version 16 or higher)
- npm package manager
- A Supabase account and project

## Installation

### Cloning the Repository

Clone the repository using the following command:

```bash
git clone https://github.com/freeCodeCamp-2025-Summer-Hackathon/teal-cache.git
```

> Windows Users: place the repository near the root of your drive if you face issues while cloning.

1. Install dependencies:

   ```bash
   npm install
   ```

   > Use the `--legacy-peer-deps` flag, if you face issues while installing.

2. Start the development server:
   ```bash
   npm run dev
   ```

### Supabase Configuration

1. Create a new project at Supabase.
2. Get your project credentials:

- Project URL: Go to Project Settings > General > - Project ID
- Anon Key: Go to Project Settings > API > Project API keys

3. Create a .env file in the root directory:

```bash
   VITE_SUPABASE_URL=https://your-project-id.supabase.co
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
```

### Run the development server

```bash
   npm run dev
```

## Project Structure

src/
├── components/ # Reusable UI components
├── pages/ # Page components
├── hooks/ # Custom React hooks
├── utils/ # Utility functions
├── lib/ # Supabase client configuration
└── styles/ # Global styles

## Authentication

The project includes a complete authentication system with:

- User registration
- User login
- Protected routes
- Session management

### Version 2.0.2 - [March 25, 2025]

- Upgraded to React 19
- Included overrides for packages to prevent peer dependency errors.
- Migrated from react-flatpickr to flatpickr package for React 19 support

### Version 2.0.1 - [February 27, 2025]

#### Update Overview

- Upgraded to Tailwind CSS v4 for better performance and efficiency.
- Updated class usage to match the latest syntax and features.
- Replaced deprecated class and optimized styles.

#### Next Steps

- Run npm install or yarn install to update dependencies.
- Check for any style changes or compatibility issues.
- Refer to the Tailwind CSS v4 [Migration Guide](https://tailwindcss.com/docs/upgrade-guide) on this release. if needed.
- This update keeps the project up to date with the latest Tailwind improvements. 🚀

### Version 2.0.0 - [February 2025]

A major update with comprehensive redesign and modern React patterns implementation.

#### Major Improvements

- Complete UI redesign with modern React patterns
- New features: collapsible sidebar, chat, and calendar
- Improved performance and accessibility
- Updated data visualization using ApexCharts

#### Key Features

- Redesigned dashboards (Ecommerce, Analytics, Marketing, CRM)
- Enhanced navigation with React Router integration
- Advanced tables with sorting and filtering
- Calendar with drag-and-drop support
- New UI components and improved existing ones

#### Breaking Changes

- Updated sidebar component API
- Migrated charts to ApexCharts
- Revised authentication system

[Read more](https://tailadmin.com/docs/update-logs/react) on this release.

### Version 1.3.7 - [June 20, 2024]

#### Enhancements

1. Remove Repetition of DefaultLayout in every Pages
2. Add ClickOutside Component for reduce repeated functionality in Header Message, Notification and User Dropdowns.

### Version 1.3.6 - [Jan 31, 2024]

#### Enhancements

1. Integrate flatpickr in [Date Picker/Form Elements]
2. Change color after select an option [Select Element/Form Elements].
3. Make it functional [Multiselect Dropdown/Form Elements].
4. Make best value editable [Pricing Table One/Pricing Table].
5. Rearrange Folder structure.

### Version 1.2.0 - [Apr 28, 2023]

- Add Typescript in TailAdmin React.

### Version 1.0.0 - Initial Release - [Mar 13, 2023]

- Initial release of TailAdmin React.

## License

TailAdmin React.js Free Version is released under the MIT License.

## Support

If you find this project helpful, please consider giving it a star on GitHub. Your support helps us continue developing
and maintaining this template.
