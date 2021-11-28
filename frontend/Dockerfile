FROM node:14-alpine AS development
WORKDIR /react
COPY . .
RUN yarn install
RUN yarn upgrade
RUN yarn run build
CMD [ "yarn", "start"]