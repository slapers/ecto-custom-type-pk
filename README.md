# Saas

**Using custom postgres types as primary keys**

## Running the test

Make sure you have a postgres instance running on localhost.
If needed edit `config/config.exs` to modify the connection params.
It defaults to `postgres:postgres@localhost/saas_test`

```
mix deps.get
mix do ecto.create, ecto.migrate
mix test
```
The `test/user_test.exs` has 1 test that fails when deleting the user.
