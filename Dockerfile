FROM node:15
WORKDIR /app
ADD . .
RUN npm install

RUN apt update -y
RUN apt install cron -y
RUN npm install express-basic-auth

EXPOSE 3000
CMD ["node", "index.js"]
