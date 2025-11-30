FROM node:20-slim

WORKDIR /app

# Installa supergateway e il server MCP Todoist
RUN npm install -g supergateway @abhiz123/todoist-mcp-server

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

CMD ["sh", "-c", "supergateway --stdio 'todoist-mcp-server' --port $PORT"]
