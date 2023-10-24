#!/bin/bash

# Build and start MSSQL container
docker build -t mssql-webserver-mssql ./MSSQL-Server
docker run -d --name mssql \
    -e SA_PASSWORD=Un!q@to2023 \
    -e ACCEPT_EULA=Y \
    -p 1433:1433 \
    mssql-webserver-mssql

# Build and start API container
docker build -t mssql-webserver-api ./API
docker run -d --name api \
    -p 80:80 \
    --link mssql:mssql \
    mssql-webserver-api

# Display status message
echo "Containers are up and running."
