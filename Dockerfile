FROM node:14.15.4 as builder
ENV NODE_ENV=production
WORKDIR /code
COPY [ "package*.json*","./"]
RUN npm ci --production
USER node
COPY hello_world_server.js .

FROM node:14.15.4-slim
USER node
WORKDIR /code
COPY --from=builder /code .
CMD ["node","hello_world_server.js"]
