defmodule Saas.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Saas.Repo
    ]

    opts = [strategy: :one_for_one, name: Saas.Supervisor]
    Supervisor.start_link(children, opts)
  end
end