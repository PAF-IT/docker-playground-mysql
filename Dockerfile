# Use the official MySQL image as a base
FROM mysql:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Set the default user for the MySQL image
USER mysql

# Set environment variables for the new user
ENV MYSQL_USER=paf-admin
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_DATABASE=paf-admin
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# initialize database, set privileges
ADD init/data-playground.sql /docker-entrypoint-initdb.d/data.sql
ADD init/privileges.sql /docker-entrypoint-initdb.d/privileges.sql

# Expose port 3306 to allow connections to the database
#EXPOSE 3306

# Start the MySQL server when the container is run
CMD ["mysqld"]