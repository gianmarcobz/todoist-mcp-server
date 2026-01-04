FROM node:20-slim
WORKDIR /app

# Install packages globally
RUN npm install -g supergateway @greirson/mcp-todoist

ENV PORT=8080
ENV TODOIST_API_TOKEN=""

EXPOSE 8080

# Use SSE transport with stateless mode
CMD ["sh", "-c", "supergateway --stdio 'mcp-todoist' --port $PORT --healthEndpoint /health"]
