# ItemBankDB

An example Item Bank (uses MariaDB). It has scripts to create and start a MariaDB database using Docker.

Seperate DML scripts will be required to create the database and table structure and populate it with data.

In order to use this you should make sure you've installed MariaDB and create three folders:

```bash
backups
ngl-staging
ngl-prod
```

## ngl-staging

The NGL staging database can be accessed using port 33061. The following scripts can be used to
start, stop and restart the database:

* start-db-staging.sh
* stop-db-staging.sh
* restart-db-staging.sh

## ngl-prod

The NGL production database can be accessed using port 3306

## Docker scripts

Also, create a file `.db-credentials` containing the root password to use when connecting to your database. As this contains a secret you should give read-only access to this for your user account only, and make sure that it does not get checked in to source control, but is store securely.

