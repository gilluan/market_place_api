defmodule MarketPlaceApi.CategoryView do
  use MarketPlaceApi.Web, :view

  def render("index.json", %{categories: categories}) do
    %{data: render_many(categories, MarketPlaceApi.CategoryView, "category.json")}
  end

  def render("show.json", %{category: category}) do
    %{data: render_one(category, MarketPlaceApi.CategoryView, "category.json")}
  end

  def render("category.json", %{category: category}) do
    %{id: category.id,
      title: category.title,
      description: category.description}
  end
end
