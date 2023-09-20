FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

# Copying the application source code to the created container
COPY . .

EXPOSE 3000

# command to run the nodejs app
CMD ["node", "app.js"]
