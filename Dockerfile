FROM node:15.5.0

WORKDIR /code

# ENV PORT 80

COPY package.json /code/package.json

RUN npm install

COPY . /code

EXPOSE 8080

CMD ["node", "server/server.js"]