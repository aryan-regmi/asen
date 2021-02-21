defmodule Asen.Repo do
  use Ecto.Repo,
    otp_app: :asen,
    adapter: Ecto.Adapters.Postgres
end
