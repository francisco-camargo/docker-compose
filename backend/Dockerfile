# some suggestions described here when struggling to .sh files within the api container
    # https://forum.codewithmosh.com/t/docker-lesson-12-section-6-running-multi-container-applications-error-and-solution/6486

FROM node:14.16.0-alpine3.13

# RUN addgroup app && adduser -S -G app app
# USER app

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]
    # I think having added the 'sh' part allows the container to find the script
    # This avoids the "cannot find ./docker-entrypoint.sh" error

EXPOSE 3001

CMD ["npm", "start"]