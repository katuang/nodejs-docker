FROM node:16-bullseye-slim AS build
WORKDIR /app
COPY ["package.json", "server.js", "./"]
RUN npm install

FROM gcr.io/distroless/nodejs:16
COPY --from=build /app /app
WORKDIR /app
CMD ["server.js"]