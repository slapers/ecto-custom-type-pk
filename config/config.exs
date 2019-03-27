# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :saas, ecto_repos: [Saas.Repo]

config :saas, Saas.Repo,
  database: "saas_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
