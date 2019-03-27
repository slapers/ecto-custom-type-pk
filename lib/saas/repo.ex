defmodule Saas.Repo do
  @moduledoc false

  use Ecto.Repo, otp_app: :saas, adapter: Ecto.Adapters.Postgres
end
