#!/bin/sh

until pg_isready -h postgres -p 5432; do
    echo "Waiting for the database..."
    sleep 2
done

echo "The database is ready."
exit 0