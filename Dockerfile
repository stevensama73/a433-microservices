FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build   asd         
EXPOSE 8000
CMD [ "npm", "run", "serve" ]
