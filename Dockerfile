FROM node:latest
MAINTAINER "RADHAKRISHNA"
WORKDIR /kittu
RUN npm i
COPY package*.json ./
COPY . .
CMD ["npm","start"]
EXPOSE 5000
