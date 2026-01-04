FROM node:20-slim

WORKDIR /app

# Install supergateway
RUN npm install -g supergateway

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

# Use todoist-mcp package (more recent and maintained)
CMD ["sh", "-c", "supergateway --stdio 'npx -y todoist-mcp' --port $PORT"]
