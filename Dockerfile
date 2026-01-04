FROM node:20-slim

WORKDIR /app

# Install supergateway
RUN npm install -g supergateway

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

# Pass env vars explicitly to npx command
CMD ["sh", "-c", "TODOIST_API_TOKEN=${TODOIST_API_TOKEN} supergateway --stdio 'npx -y @abhiz123/todoist-mcp-server' --port $PORT"]
