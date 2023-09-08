FROM node:16
COPY . /
WORKDIR /
RUN npm install
RUN npm run build
EXPOSE 3333
CMD ["dist/main.js"]