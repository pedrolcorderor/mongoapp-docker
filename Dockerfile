FROM node:18

RUN mkdir -p /home/app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/vishnubob/wait-for-it.git


WORKDIR /home/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

