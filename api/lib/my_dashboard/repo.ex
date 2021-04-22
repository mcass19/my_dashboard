defmodule MyDashboard.Repo do
  use Ecto.Repo,
    otp_app: :my_dashboard,
    adapter: Ecto.Adapters.Postgres
end
