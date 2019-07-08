FROM node:8-alpine
WORKDIR /usr/app
COPY . .
RUN npm install && node shins.js --minify



FROM nginx
COPY --from=0 /usr/app/index.html /usr/share/nginx/html
COPY --from=0 /usr/app/pub /usr/share/nginx/html/pub
COPY --from=0 /usr/app/source /usr/share/nginx/html/source