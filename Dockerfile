
FROM node:16.13.2
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . /app
RUN npm run build
EXPOSE 80
CMD [ "node", "stream.js" ]

