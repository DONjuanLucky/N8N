FROM n8nio/n8n:latest

# Add custom environment variables
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Create and set permissions for n8n directory
USER root
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 700 /home/node/.n8n

# Switch back to node user
USER node

# Expose the port n8n runs on
EXPOSE 5678

# Start n8n
CMD ["npm", "run", "start"]
