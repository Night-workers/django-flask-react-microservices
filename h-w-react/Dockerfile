FROM node:14-alpine AS development
WORKDIR /react
COPY . .
RUN npm install
RUN npm run build
CMD [ "npm", "start"]