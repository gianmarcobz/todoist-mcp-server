FROM node:20-slim

WORKDIR /app

# Install supergateway
RUN npm install -g supergateway

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

# Use original package with explicit env export
CMD ["sh", "-c", "export TODOIST_API_TOKEN && supergateway --stdio 'npx -y @abhiz123/todoist-mcp-server' --port $PORT"]
