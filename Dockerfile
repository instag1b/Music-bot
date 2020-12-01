FROM node:14.16.0-alpine
WORKDIR /app
COPY --chown=node:node . .
RUN npm install
USER node
ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["node", "index.js"]
