FROM node:latest
MAINTAINER "RADHAKRISHNA"
RUN npm install
WORKDIR /var
COPY package*.json ./
COPY . .
CMD ["npm","start"]
EXPOSE 5000
