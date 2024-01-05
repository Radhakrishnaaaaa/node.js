FROM node:latest
MAINTAINER ADDRESS "RADHAKRISHNA"
WORKDIR /var
COPY package*.json ./
COPY . .
CMD ["npm","start"]
EXPOSE 5000
