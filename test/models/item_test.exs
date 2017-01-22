defmodule CycleChanger.ItemTest do
  use CycleChanger.ModelCase

  alias CycleChanger.Item

  @valid_attrs %{barcode_number: "some content", name: "some content", status: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
