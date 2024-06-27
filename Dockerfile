# menggunakan image node:14-alpine dari docker hub
FROM node:14-alpine

# menentukan working directory untuk container
WORKDIR /app

# salin seluruh source ke working directory
COPY . .

# set environtment pada production dan menggunakan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies pada production kemudian build app
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080 pada container
EXPOSE 8080

# menjalankan server
CMD ["npm", "start"]
