FROM node:20 AS build
ARG VITE_BACKEND_URL=https://jubilant-dollop-57jr99v9gqc4jgq-3000.app.github.dev/api/v1/api/v1
WORKDIR /build
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
# Start the SSR server
CMD ["npm", "start"]