defmodule MarketPlaceApi.Category do
  use MarketPlaceApi.Web, :model

  schema "categories" do
    field :title, :string
    field :description, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end
end
