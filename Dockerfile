FROM node:25.2.1-alpine3.21
WORKDIR /opt/app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]