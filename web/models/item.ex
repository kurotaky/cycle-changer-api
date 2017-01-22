defmodule CycleChanger.Item do
  use CycleChanger.Web, :model

  schema "items" do
    field :barcode_number, :string
    field :name, :string
    field :status, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:barcode_number, :name, :status])
    |> validate_required([:barcode_number, :status])
  end
end
