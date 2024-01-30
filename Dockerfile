FROM node:14

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Install Prometheus client library
RUN npm install prom-client

CMD ["npm", "start"]
