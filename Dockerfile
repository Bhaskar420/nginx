#LD STAGE ----
FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# ---- PRODUCTION STAGE ----
FROM nginx:alpine

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

