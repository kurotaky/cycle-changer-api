defmodule CycleChanger.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :barcode_number, :string
      add :name, :string
      add :status, :integer

      timestamps()
    end

  end
end
