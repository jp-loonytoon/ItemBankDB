# ItemBankDB

An example Item Bank (uses MariaDB). It has scripts to create and start a MariaDB databaes using Docker.

Seperate DML scripts will be required to create the database and table structure and populate it with data.

In order to use this you should make sure you've installed MariaDB and create two folders:

```bash
backups
mariadb-staging
```

Also, create a file `.db-credentials` containing the root password to use when connecting to your database. As this contains a secret you should give read-only access to this for your user account only, and make sure that it does not get checked in to source control, but is store securely.

