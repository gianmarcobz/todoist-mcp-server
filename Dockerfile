FROM node:20-slim
WORKDIR /app

# Install supergateway and todoist MCP
RUN npm install -g supergateway @abhiz123/todoist-mcp-server

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

# Run with SSE transport
CMD ["sh", "-c", "supergateway --stdio 'npx -y @abhiz123/todoist-mcp-server' --port $PORT --healthEndpoint /health"]
