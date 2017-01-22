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
end
