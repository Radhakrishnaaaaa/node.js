FROM node:latest
MAINTAINER "RADHAKRISHNA"
RUN npm install
WORKDIR /kittu
COPY package*.json ./kittu
RUN npm run
COPY . .
CMD ["npm","start"]
EXPOSE 5000
