#!/bin/sh

echo "Waiting for MongoDB to start..."
sh ./wait-for db:27017
    # Add "sh" argument to allow backend container to find and run ./wait-for

echo "Migrating the database..."
npm run db:up

echo "Starting the server..."
npm start