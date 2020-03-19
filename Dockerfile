FROM node:10
WORKDIR /usr/src/app
COPY . .
RUN npm ci && npm run build

healthcheck NONE

EXPOSE 8000
CMD [ "npm", "start" ]
