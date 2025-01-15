# modified as described here
    # https://forum.codewithmosh.com/t/docker-lesson-12-section-6-running-multi-container-applications-error-and-solution/6486

FROM node:14.16.0-alpine3.13

WORKDIR /app
RUN addgroup app && adduser -S -G app app && chown -R  app /app

USER app
COPY package*.json ./
RUN npm install
COPY . .

USER root
RUN chmod +x ./docker-entrypoint.sh

# you can choose define entrypoint here or in yml file
ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

USER app

EXPOSE 3001

CMD ["npm", "start"]