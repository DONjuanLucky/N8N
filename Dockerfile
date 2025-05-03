FROM n8nio/n8n:latest

# Add custom environment variables if needed
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_ENCRYPTION_KEY=your-encryption-key-here

# Expose the port n8n runs on
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
