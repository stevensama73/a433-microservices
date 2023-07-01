# Mengunduh image node dengan tag 16-alpine
FROM node:16-alpine
# Membuat working directory bernama app di dalam container
WORKDIR /app
# Menyalin seluruh berkas dalam local directory ke working directory
COPY . .
# Menjalankan perintah untuk melakukan instalasi package
RUN npm install
# Mengekspos port 3000 yang akan digunakan container
EXPOSE 3000
# Menjalankan perintah npm start
CMD ["npm", "start"]