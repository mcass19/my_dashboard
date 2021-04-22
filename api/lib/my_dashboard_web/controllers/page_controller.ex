defmodule MyDashboardWeb.PageController do
  use MyDashboardWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
