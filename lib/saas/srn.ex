defmodule Saas.SRN do
  @behaviour Ecto.Type

  @type t :: %__MODULE__{
          ws: binary,
          rs: binary
        }
  defstruct [:ws, :rs]

  def new(ws, rs), do: %__MODULE__{ws: ws, rs: rs}

  def type, do: :srn
  def cast({ws, rs}), do: {:ok, new(ws, rs)}
  def cast(_), do: {:error, :invalid_srn}
  def dump(%__MODULE__{ws: ws, rs: rs}), do: {:ok, {uuid_dump!(ws), uuid_dump!(rs)}}
  def load({ws, rs}), do: {:ok, new(uuid_load!(ws), uuid_load!(rs))}

  defp uuid_dump!(uuid) do
    {:ok, uuid_bin} = Ecto.UUID.dump(uuid)
    uuid_bin
  end

  defp uuid_load!(uuid) do
    {:ok, uuid_bin} = Ecto.UUID.load(uuid)
    uuid_bin
  end
end
