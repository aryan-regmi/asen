defmodule AsenWeb.PageController do
  use AsenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
