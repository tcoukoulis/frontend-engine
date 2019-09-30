FROM node:12-alpine

ARG APP="app"
ARG APP_VERSION="development"

WORKDIR /srv

RUN npm i --save-dev create-react-app &&\
	npx create-react-app "${APP}-react"

WORKDIR /srv/${APP}-react

VOLUME ["/srv/${APP}-react"]

CMD ["npm", "start"]
