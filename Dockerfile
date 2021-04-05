FROM nginx:stable-alpine

ARG APP_ENV="local"

EXPOSE 80

RUN rm /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf


CMD ["nginx", "-g", "daemon off;"]