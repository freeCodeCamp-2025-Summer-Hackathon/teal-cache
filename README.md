# Daily Drip

A modern journaling app built with React, Tailwind CSS, and Supabase authentication.

![Daily Drip](./main-page-pic.svg)

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

```
src/
├── components/    # Reusable UI components
├── pages/        # Page components
├── hooks/        # Custom React hooks
├── utils/        # Utility functions
├── lib/          # Supabase client configuration
└── styles/       # Global styles
```

## Authentication

The project includes a complete authentication system with:

- User registration
- User login
- Protected routes
- Session management

All authentication is handled through Supabase, providing secure and scalable user management.

## Credits

- Base template: [TailAdmin Free React Tailwind Admin Dashboard](https://tailadmin.com/)
- Base template repo: [Github](https://github.com/TailAdmin/free-react-tailwind-admin-dashboard)
- UI Framework: [Tailwind CSS](https://tailwindcss.com/)
- Authentication: [Supabase](https://supabase.com/)

## Made by:

| Git name    | Discord Name |
| ----------- | ------------ |
| Amedeo      | n4pZ         |
| kwui3       | Kay          |
| cosmonewt   | Theo         |
| liquidsonic |              |
| JesNetWD    | Jes          |
| bobby2910   | vB           |
| Simon Aust  | Simon        |
| Amine       | Amine        |
