FROM node:12-alpine

ARG APP="app"
ARG APP_VERSION="development"
ARG GIT_EMAIL="foo@bar.com"
ARG GIT_USER="Foo Bar"

WORKDIR /srv

RUN apk add git --no-cache && \
	git config --global user.name ${GIT_USER} && \
	git config --global user.email ${GIT_EMAIL} && \
	npm i -g @angular/cli &&\
	ng new "${APP}-angular"

WORKDIR /srv/${APP}-angular

CMD ["ng", "serve", "--host", "0.0.0.0"]
