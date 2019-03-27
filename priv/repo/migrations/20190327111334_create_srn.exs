defmodule Saas.Repo.Migrations.CreateSRN do
  @moduledoc """
  The SRN combines the resource id with the workspace (tenant) id
  """

  use Ecto.Migration

  def up do
    execute """
      CREATE TYPE public.srn AS (r_id uuid, w_id uuid);
    """
  end

  def down do
    execute """
      DROP TYPE IF EXISTS public.srn
    """
  end
end
