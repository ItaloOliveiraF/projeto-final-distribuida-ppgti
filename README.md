# projeto-final-distribuida-ppgti

```shell
make up-base
```

## Restaurant

```shell
make up-restaurant
```

After up the containers, you need to init the restaurant database:

```shell
make restaurant-db-reset
```

You can now test the restaurant API by going to `http://localhost:8000/docs`.
