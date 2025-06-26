FROM node:24.3.0-alpine3.21
WORKDIR /opt/app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]