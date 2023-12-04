FROM node:18-alpine

ENV NODE_ENV=production
EXPOSE 8080/tcp
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install

COPY . .

ENTRYPOINT [ "node" ]
CMD ["src/index.js"]
