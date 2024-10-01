#!/bin/bash

set -e

if [ ! -f /var/lib/mysql/.initialized ]; then
    echo "Initializing database for the first time..."
    # Run your initialization scripts here
    # For example:
    # mysql -u root -p$MYSQL_ROOT_PASSWORD < /docker-entrypoint-initdb.d/your-initialization-script.sql

    # Create the flag file to indicate initialization
    touch /var/lib/mysql/.initialized
else
    echo "Database already initialized. Skipping initialization."
fi

# Start MySQL server
exec docker-entrypoint.sh "$@"