FROM node:14.18.2-slim

WORKDIR /app

COPY package.json /app

RUN npm install --production

COPY . /app

CMD ["node", "app.js"]
