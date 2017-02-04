defmodule CycleChanger.ItemController do
  use CycleChanger.Web, :controller

  alias CycleChanger.Item

  def index(conn, _params) do
    items = Repo.all(Item)
    render(conn, :index, items: items)
  end

  def new(conn, _params) do
    changeset = Item.changeset(%Item{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"item" => item_params}) do
    changeset = Item.changeset(%Item{}, item_params)

    case Repo.insert(changeset) do
      {:ok, _item} ->
        conn
        |> send_resp(201, "")
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    item = Repo.get!(Item, id)
    render(conn, "show.html", item: item)
  end

  def edit(conn, %{"id" => id}) do
    item = Repo.get!(Item, id)
    changeset = Item.changeset(item)
    render(conn, "edit.html", item: item, changeset: changeset)
  end

  def update(conn, %{"id" => id, "item" => item_params}) do
    item = Repo.get!(Item, id)
    changeset = Item.changeset(item, item_params)

    case Repo.update(changeset) do
      {:ok, item} ->
        conn
        |> put_flash(:info, "Item updated successfully.")
        |> redirect(to: item_path(conn, :show, item))
      {:error, changeset} ->
        render(conn, "edit.html", item: item, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    item = Repo.get!(Item, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(item)

    conn
    |> put_flash(:info, "Item deleted successfully.")
    |> redirect(to: item_path(conn, :index))
  end

  def level(conn, _params) do
    stock_items_count = Repo.all(from i in "items",
      where: i.status == 0,
      select: count("*"))
    drop_items_count = Repo.all(from i in "items",
      where: i.status == 1,
      select: count("*"))
    level = stock_items_count -- drop_items_count
    render(conn, :level, level: level)
  end
end
