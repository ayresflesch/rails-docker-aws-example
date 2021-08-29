# Setup

To start using the application you must create the database and run the migrations.

The `application` service name is defined on the `docker-compose.yml` file


```
$ docker-compose exec application rake db:setup db:migrate
```

