#Base Image Memakai Nodejs versi 14
FROM node:14

#Label Metadata Untuk Menandakan Sumber Kode Github
LABEL org.opencontainers.image.source=https://github.com/aldisakti2/a433-microservices#proyek-pertama

#Bekerja di Directory /app
WORKDIR /app

#Menyalin Semua File/Folder Di Lokasi Saat Ini ke Working Directory Container
COPY . .

#Mendeklarasikan Environment Variable Agar Aplikasi Berjalan di Mode Production
#Serta Menggunakan Database bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

#Menginstall Dependencies dan Build Aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Mengekspos Port Aplikasi di Port 8080
EXPOSE 8080

#Menjalankan Aplikasi
CMD ["npm", "start"]
