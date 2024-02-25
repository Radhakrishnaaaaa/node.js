FROM node:latest
MAINTAINER "RADHAKRISHNA"
RUN npm i
WORKDIR /kittu
COPY package*.json ./
COPY . .
CMD ["npm","start"]
EXPOSE 5000
