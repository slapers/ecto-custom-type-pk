defmodule Saas.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:saas_users, primary_key: false) do
      add :id, :srn, primary_key: true
      add :name, :string
    end
  end
end
