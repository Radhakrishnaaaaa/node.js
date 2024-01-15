FROM node:latest
MAINTAINER "RADHAKRISHNA"
RUN npm i -g npm
WORKDIR /kittu
COPY package*.json ./kittu/
COPY . .
CMD ["npm","start"]
EXPOSE 5000
