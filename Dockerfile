# Ambil image Node.js V.14
FROM node:14

# working directory adalah /app
WORKDIR /app

# Salin seluruh base code ke working directory
COPY . .

# Agar berjalan di production mode dan menggunakan container item-db
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies untuk production dan build
RUN npm install --production --unsafe-perm && npm run build

# Port expose ke 8080
EXPOSE 8080

# Perintah untuk jalankan aplikasi
CMD [ "npm", "start" ]