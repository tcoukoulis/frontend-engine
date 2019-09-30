FROM node:12-alpine

ARG APP="app"
ARG APP_VERSION="development"

WORKDIR /srv

RUN apk add git --no-cache && \
	npm config set unsafe-perm true && \
	npm i -g elm && \
	npm i -g create-elm-app && \
	create-elm-app "${APP}-elm"

WORKDIR /srv/${APP}-elm

CMD ["elm-app", "start"]
