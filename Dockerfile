FROM node:latest
MAINTAINER "RADHAKRISHNA"
WORKDIR /deploy
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm","start"]
EXPOSE 5000
