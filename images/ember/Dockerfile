FROM node:12-alpine

ARG APP="app"
ARG APP_VERSION="development"

WORKDIR /srv

RUN npm i -g ember-cli &&\
	ember new "${APP}-ember"

WORKDIR /srv/${APP}-ember

CMD ["ember", "serve"]
