defmodule Saas.UserTest do
  @moduledoc false
  use ExUnit.Case
  alias Ecto.UUID
  alias Saas.{Repo, User, SRN}

  @id SRN.new(UUID.generate(), UUID.generate())

  setup do
    {:ok, user: Repo.insert!(%User{id: @id, name: "Jack"})}
  end

  test "get!/2", %{user: user} do
    assert user == Repo.delete!(user)
  end
end
