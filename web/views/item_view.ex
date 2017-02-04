defmodule CycleChanger.ItemView do
  use CycleChanger.Web, :view

   def render("index.json", %{items: items}) do
     render_many(items, __MODULE__, "item.json")
   end

   def render("item.json", %{item: item}) do
     %{
       id: item.id,
       barcode_number: item.barcode_number,
       name: item.name,
       status: item.status
     }
   end

   def render("level.json", %{item: level}) do
     %{
       level: level
     }
   end

   def render("level.json", %{level: level}) do
     %{data: render_one(level, CycleChanger.ItemView, "level.json")}
   end
end
