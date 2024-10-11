# Gunakan Node.js sebagai base image
FROM node:14

# Buat directory untuk aplikasi di dalam container
WORKDIR /usr/src/app

# Copy file package.json dan package-lock.json
COPY package*.json ./

# Instal dependencies
RUN npm install

# Copy semua file dari host ke dalam container
COPY . .

# Ekspos port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["node", "server.js"]
