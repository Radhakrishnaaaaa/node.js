FROM node:latest
MAINTAINER ADDRESS "RADHAKRISHNA"
WORKDIR /kittu
COPY package*.json ./kittu
COPY . .
CMD ["npm","start"]
EXPOSE 5000
