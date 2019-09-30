FROM node:12-alpine

ARG APP="app"
ARG APP_VERSION="development"

WORKDIR /srv

RUN npm i --global @vue/cli @vue/cli-service-global &&\
	vue create "${APP}-vue" -d

WORKDIR /srv/${APP}-vue

CMD ["yarn", "serve"]
