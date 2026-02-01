FROM node:20-alpine

WORKDIR /app
EXPOSE 5173

# Instalujeme závislosti a pouštíme dev server s povoleným hostem
CMD ["sh", "-c", "npm install && npm run dev -- --host"]