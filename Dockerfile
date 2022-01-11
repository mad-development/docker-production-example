FROM ubuntu

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN apt install -y npm

WORKDIR /app

COPY . /app

RUN npm install --production

CMD ["node", "app.js"]
