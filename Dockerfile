FROM node:latest
MAINTAINER "RADHAKRISHNA"
WORKDIR /kittu
RUN npm install
COPY package*.json ./
COPY . .
CMD ["npm","start"]
EXPOSE 5000
