FROM node:14.18.2-slim

WORKDIR /app

COPY . /app

RUN npm install --production

CMD ["node", "app.js"]
