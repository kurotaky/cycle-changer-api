defmodule CycleChanger.PageController do
  use CycleChanger.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
