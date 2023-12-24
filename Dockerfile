# Ambil base image NodeJS 18-alpine
FROM node:18-alpine

# Direktori container ke /app
WORKDIR /app

# Salin file untuk menginstall dependensi ke dalam direktori container
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin semua file ke dalam direktori
COPY . .

# Buka port container
EXPOSE 3001

# Jalankan aplikasi dengan npm
CMD ["npm", "start"]

