FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.1jiiddy.mongodb.net
ENV MONGODB_USERNAME sasitha213
ENV MONGODB_PASSWORD BgkN3lAfyFsZDswk

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]