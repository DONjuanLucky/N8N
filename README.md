# n8n on Railway

This repository contains the necessary configuration to deploy [n8n](https://n8n.io/) on [Railway](https://railway.app/).

## Deployment Instructions

1. Fork this repository
2. Create a new Railway project from your GitHub repository
3. Set up the required environment variables (see `.env.example` for reference)
4. Deploy the project

## Required Environment Variables

At minimum, you need to set the following environment variables in your Railway project:

- `N8N_ENCRYPTION_KEY`: A secure random string to encrypt sensitive data
- `DB_TYPE`: Set to `postgresdb` for PostgreSQL
- `N8N_HOST`: Your Railway app URL (e.g., your-app.up.railway.app)
- `N8N_PROTOCOL`: Set to `https`

For a full list of available environment variables, refer to the `.env.example` file and the [n8n documentation](https://docs.n8n.io/hosting/environment-variables/environment-variables/).

## Database Setup

It's recommended to use PostgreSQL for production deployments. Railway makes it easy to set up a PostgreSQL database:

1. Add a PostgreSQL plugin to your project
2. Railway will automatically inject the database connection details as environment variables

## Notes

- The default port exposed is 5678
- For production use, it's recommended to set up proper authentication and ensure your encryption key is secure
- Remember to set up SMTP if you want to enable user management features

## Persistence

n8n requires persistent storage for its execution data. On Railway, you have several options:

1. Use PostgreSQL for workflows and execution data (recommended)
2. Use an external storage service for binary data if needed
