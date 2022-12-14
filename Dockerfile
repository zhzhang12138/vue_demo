FROM node:16

WORKDIR /vue_demo/

COPY . .

RUN yarn && yarn build

FROM nginx:alpine

LABEL MAINTAINER="zhzhang12138@163.com"

COPY .docker-compose/nginx/conf.d/my.conf /etc/nginx/conf.d/my.conf

COPY --from=0 /vue_demo/dist /usr/share/nginx/html

