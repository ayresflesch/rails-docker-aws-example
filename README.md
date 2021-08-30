# Setup

To start using the application you must create the database and run the migrations.

The `application` service name is defined on the `docker-compose.yml` file


```
$ docker-compose exec application rake db:setup db:migrate
```

# Database credentials
Database credentials are located on the `.env` file.

One must notice that on the `docker-compose.yml` the port exposed is the `3307`.

```
DATABASE_HOST=database
MYSQL_ROOT_PASSWORD=rute123
MYSQL_DATABASE=development
MYSQL_USER=user
MYSQL_PASSWORD=user123
```

