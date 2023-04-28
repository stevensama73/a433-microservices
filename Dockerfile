# Mengunduh image node dengan tag 14-alpine
FROM node:14-alpine
# Membuat working directory bernama app di dalam container
WORKDIR /app
# Menyalin seluruh berkas dalam local directory ke working directory
COPY . .
# Mendeklarasikan environment variable NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db
# Menjalankan perintah untuk melakukan instalasi environment production
RUN npm install --production --unsafe-perm && npm run build
# Mengekspos port 8080 yang akan digunakan container
EXPOSE 8080
# Menjalankan perintah npm start
CMD ["npm", "start"]