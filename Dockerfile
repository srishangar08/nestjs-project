FROM node:16
COPY . /
WORKDIR /
RUN npm install
ENV SPARK_VERSION=2.7.0
RUN npm run build
EXPOSE 3333
CMD [ "node" "dist/main.js" ]