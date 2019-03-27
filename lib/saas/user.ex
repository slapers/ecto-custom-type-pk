defmodule Saas.User do
  @moduledoc false
  use Ecto.Schema
  alias Saas.SRN

  @primary_key {:id, SRN, autogenerate: false}
  @foreign_key_type SRN
  schema "saas_users" do
    field :name, :string
  end
end
