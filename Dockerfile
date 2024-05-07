# Використовуємо базовий образ Node.js
FROM node:14

# Встановлюємо залежності та копіюємо файли
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Запускаємо сервер
CMD ["npm", "start"]
